import dxchange
import numpy as np
import h5py
import sys
import skimage.feature
import concurrent.futures as cf
import threading
import numpy as np
from functools import partial
from skimage.registration import phase_cross_correlation        

proj_name = sys.argv[1]
flat_name = sys.argv[2]

def apply_shift(self, psi, p):
        """Apply shift for all projections."""
        [nz,n] = psi.shape[1:3]
        tmp = cp.zeros([psi.shape[0], 2*nz, 2*n], dtype='float32')
        tmp[:, nz//2:3*nz//2, n//2:3*n//2] = psi
        [x, y] = cp.meshgrid(cp.fft.rfftfreq(2*n),
                             cp.fft.fftfreq(2*nz))
        shift = cp.exp(-2*cp.pi*1j *
                       (x*p[:, 1, None, None]+y*p[:, 0, None, None]))
        res0 = cp.fft.irfft2(shift*cp.fft.rfft2(tmp))
        res = res0[:, nz//2:3*nz//2, n//2:3*n//2]
        return res

def apply_shift_batch(self, u, p, ptheta=16):
    [ntheta,nz,n] = u.shape
    res = np.zeros([ntheta, nz, n], dtype='float32')
    for k in range(0, ntheta//ptheta):
        ids = np.arange(k*ptheta, (k+1)*ptheta)
        # copy data part to gpu
        u_gpu = cp.array(u[ids])
        p_gpu = cp.array(p[ids])
        # Radon transform
        res_gpu = apply_shift(u_gpu, p_gpu)
        # copy result to cpu
        res[ids] = res_gpu.get()
    return res

def _upsampled_dft(self, data, ups,
                    upsample_factor=1, axis_offsets=None):

    im2pi = 1j * 2 * np.pi
    tdata = data.copy()
    kernel = (cp.tile(cp.arange(ups), (data.shape[0], 1))-axis_offsets[:, 1:2])[
        :, :, None]*cp.fft.fftfreq(data.shape[2], upsample_factor)
    kernel = cp.exp(-im2pi * kernel)
    tdata = cp.einsum('ijk,ipk->ijp', kernel, tdata)
    kernel = (cp.tile(cp.arange(ups), (data.shape[0], 1))-axis_offsets[:, 0:1])[
        :, :, None]*cp.fft.fftfreq(data.shape[1], upsample_factor)
    kernel = cp.exp(-im2pi * kernel)
    rec = cp.einsum('ijk,ipk->ijp', kernel, tdata)

    return rec

def registration_shift(self, src_image, target_image, upsample_factor=1, space="real"):

    # assume complex data is already in Fourier space
    if space.lower() == 'fourier':
        src_freq = src_image
        target_freq = target_image
    # real data needs to be fft'd.
    elif space.lower() == 'real':
        src_freq = cp.fft.fft2(src_image)
        target_freq = cp.fft.fft2(target_image)

    # Whole-pixel shift - Compute cross-correlation by an IFFT
    shape = src_freq.shape
    image_product = src_freq * target_freq.conj()
    cross_correlation = cp.fft.ifft2(image_product)
    A = cp.abs(cross_correlation)
    maxima = A.reshape(A.shape[0], -1).argmax(1)
    maxima = cp.column_stack(cp.unravel_index(maxima, A[0, :, :].shape))

    midpoints = np.array([cp.fix(axis_size / 2)
                            for axis_size in shape[1:]])

    shifts = cp.array(maxima, dtype=cp.float64)
    ids = cp.where(shifts[:, 0] > midpoints[0])
    shifts[ids[0], 0] -= shape[1]
    ids = cp.where(shifts[:, 1] > midpoints[1])
    shifts[ids[0], 1] -= shape[2]
    print(shifts)
    
    if upsample_factor > 1:
        # Initial shift estimate in upsampled grid
        shifts = np.round(shifts * upsample_factor) / upsample_factor
        upsampled_region_size = np.ceil(upsample_factor * 1.5)
        # Center of output array at dftshift + 1
        dftshift = np.fix(upsampled_region_size / 2.0)

        normalization = (src_freq[0].size * upsample_factor ** 2)
        # Matrix multiply DFT around the current shift estimate

        sample_region_offset = dftshift - shifts*upsample_factor
        cross_correlation = _upsampled_dft(image_product.conj(),
                                                upsampled_region_size,
                                                upsample_factor,
                                                sample_region_offset).conj()
        cross_correlation /= normalization
        # Locate maximum and map back to original pixel grid
        A = cp.abs(cross_correlation)
        maxima = A.reshape(A.shape[0], -1).argmax(1)
        maxima = cp.column_stack(
            cp.unravel_index(maxima, A[0, :, :].shape))

        maxima = cp.array(maxima, dtype=cp.float64) - dftshift

        shifts = shifts + maxima / upsample_factor
            
    return shifts

def registration_shift_batch(self, u, w, ptheta=16, upsample_factor=1, space="real"):
    res = np.zeros([ntheta, 2], dtype='float32')    
    for k in range(0, ntheta//ptheta):
        ids = np.arange(k*ptheta, (k+1)*ptheta)
        # copy data part to gpu
        u_gpu = cp.array(u[ids])
        w_gpu = cp.array(w[ids])
        # Radon transform
        res_gpu = registration_shift(
            u_gpu, w_gpu, upsample_factor, space)
        # copy result to cpu
        res[ids] = res_gpu.get()
    return res

def find_flat_shifts(proj, flat):
    flat_part = flat[0:16,0:200,0:200].astype('float32')
    proj_part = proj[0:16,0:200,0:200].astype('float32')
    shifts = registration_shift_batch(flat_part,proj_part)
    print(shifts)
    dxchange.write_tiff(proj_part/(flat_part+1e-3),'/data/staff/tomograms/vviknik/tmp/fproj_part'overwrite=True)
    dxchange.write_tiff(proj_part,'/data/staff/tomograms/vviknik/tmp/proj_part'overwrite=True)
    dxchange.write_tiff(flat_part,'/data/staff/tomograms/vviknik/tmp/flat_part'overwrite=True)

if __name__ == "__main__":
    proj_fid = h5py.File(proj_name,'r')
    flat_fid = h5py.File(flat_name,'r')
    flat = flat_fid[:]
    for k in range(proj_fid.shape[0]//chunk):
        proj = proj_fid[k*chunk:(k+1)*chunk]        
        shifts = find_flat_shifts(proj, flat)

