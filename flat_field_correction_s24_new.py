import dxchange
import numpy as np
import h5py
import sys
import os
import cv2
from itertools import islice
from scipy import ndimage

def chunk(iterable, size):
    it = iter(iterable)
    item = list(islice(it, size))
    while item:
        yield np.array(item)
        item = list(islice(it, size))

def apply_shift(proj, p):    
    res = proj.copy()
    for k in range(proj.shape[0]):
        res[k] = ndimage.shift(proj[k],p[k],mode='nearest',order=1)
    return res

def find_min_max(flat):
    """Find min and max values according to histogram"""
    h, e = np.histogram(flat[:], 1000)
    stend = np.where(h > np.max(h)*0.005)
    st = stend[0][0]
    end = stend[0][-1]
    mmin = e[st]
    mmax = e[end+1]
    return mmin, mmax


def register_shift_sift(proj, flat):
    """Find shifts via SIFT detecting features"""
    mmin, mmax = find_min_max(flat)
    sift = cv2.SIFT_create()
    shifts = np.zeros([proj.shape[0], 2], dtype='float32')
    for id in range(proj.shape[0]):
        tmp1 = ((proj[id]-mmin) /
                (mmax-mmin)*255)
        tmp1[tmp1 > 255] = 255
        tmp1[tmp1 < 0] = 0
        tmp2 = ((flat-mmin) /
                (mmax-mmin)*255)
        tmp2[tmp2 > 255] = 255
        tmp2[tmp2 < 0] = 0
        # find key points
        tmp1 = tmp1.astype('uint8')
        tmp2 = tmp2.astype('uint8')

        kp1, des1 = sift.detectAndCompute(tmp1, None)
        kp2, des2 = sift.detectAndCompute(tmp2, None)
        # cv2.imwrite('original_image_right_keypoints.png',
        #             cv2.drawKeypoints(tmp1, kp1, None))
        # cv2.imwrite('original_image_left_keypoints.png',
        #             cv2.drawKeypoints(tmp2, kp2, None))
        match = cv2.BFMatcher()
        matches = match.knnMatch(des1, des2, k=2)
        good = []
        for m, n in matches:
            if m.distance < 0.5*n.distance:
                good.append(m)

        draw_params = dict(matchColor=(0, 255, 0),
                           singlePointColor=None,
                           flags=2)
        tmp3 = cv2.drawMatches(tmp1, kp1, tmp2, kp2, good, None, **draw_params)
        #cv2.imwrite("original_image_drawMatches.jpg", tmp3)
        src_pts = np.float32(
            [kp1[m.queryIdx].pt for m in good]).reshape(-1, 1, 2)
        dst_pts = np.float32(
            [kp2[m.trainIdx].pt for m in good]).reshape(-1, 1, 2)
        shift = (src_pts-dst_pts)[:, 0, :]
        shifts[id] = np.median(shift, axis=0)[::-1]
        #print(
            #f'number of matched points for proj {id}: {len(good)}, found shifts:{shifts[id]}')
        if(len(good)==0):
            print(f'set shift to 0')
            shifts[id] = 0

    return shifts


if __name__ == "__main__":
    proj_name = sys.argv[1]
    flat_name = sys.argv[2]
    output_name = sys.argv[3]
    flat_region_xstart = int(sys.argv[4])
    flat_region_xend = int(sys.argv[5])
    flat_region_ystart = int(sys.argv[6])
    flat_region_yend = int(sys.argv[7])

    print('->create a new h5 file with corrected projections')
    cmd = f'cp {proj_name} {output_name}'
    os.system(cmd)
    print('->copy done')    
    proj_fid = h5py.File(proj_name, 'r')
    flat_fid = h5py.File(flat_name, 'r')
    output_fid = h5py.File(output_name, 'r+')
    proj = proj_fid['exchange/data_white']
    flat = flat_fid['exchange/data_white'][:]

    del output_fid["/exchange/data"]
    output_proj = output_fid.create_dataset("/exchange/data", proj.shape,
                                    chunks=(1, proj.shape[1], proj.shape[2]), dtype='u8')
        
    shifts = register_shift_sift(flat,np.median(flat,axis=0))
    flat_shift = apply_shift_batch(flat, -shifts).astype('uint8')    
    
    for ids in chunk(range(proj.shape[0]),128):
        # find flat field shifts w.r.t. each projection by using small parts without sample
        print(f'->read data {proj_name} {ids[0]}-{ids[-1]}')
        flat_part = np.median(flat_shift[:, flat_region_ystart:flat_region_yend,
                        flat_region_xstart:flat_region_xend],axis=0)
        proj_part = proj[ids, flat_region_ystart:flat_region_yend,
                        flat_region_xstart:flat_region_xend][:]
        print('->register shift')                     
        shifts = register_shift_sift(proj_part, flat_part)
        print('->read whole projections')                     
        flat_part = np.median(flat_shift.astype('float32'),axis=0)
        proj_part = proj[ids].astype('float32')
        print('->apply shifts')                         
        flat_part_shift = apply_shift(np.tile(flat_part,[proj_part.shape[0],1,1]), shifts)
        print('->apply flat field correction')                         
        
        fproj_part = (proj_part/(flat_part_shift+1e-5))*200
        fproj_part[fproj_part>255] = 255
        fproj_part = fproj_part.astype('uint8')
        
        #fiproj_part = proj_part/(flat_part+1e-5)
        # dxchange.write_tiff_stack(fiproj_part,
        #                         '/gdata/RAVEN/vnikitin/2021-07/Sobhani/tmp/fiproj_part/f', overwrite=True)
        # dxchange.write_tiff_stack(fproj_part,
        #                         '/gdata/RAVEN/vnikitin/2021-07/Sobhani/tmp/fproj_part/f', overwrite=True)                        
        output_proj[ids] = fproj_part                                           
        print('->update projections done')
        
        
        
