path=/data/staff/tomograms/vviknik/experiments/APS/2021-07/Sobhani/radiography

dir=/s24
CUDA_VISIBLE_DEVICES=1 python flat_field_correction_tiff.py "$path$dir"  "$path"_corr"$dir" 100 55110 0 512 0 64 &

dir=/test7
CUDA_VISIBLE_DEVICES=2 python flat_field_correction_tiff.py "$path$dir"  "$path"_corr"$dir" 10100 52315 0 512 0 64 &

dir=/test6
CUDA_VISIBLE_DEVICES=3 python flat_field_correction_tiff.py "$path$dir"  "$path"_corr"$dir" 100 1745 0 512 0 64 &

wait
dir=/test5
CUDA_VISIBLE_DEVICES=1 python flat_field_correction_tiff.py "$path$dir"  "$path"_corr"$dir" 12169 45890 0 512 0 64 &

dir=/test4
CUDA_VISIBLE_DEVICES=2 python flat_field_correction_tiff.py "$path$dir"  "$path"_corr"$dir" 0 12069 0 512 0 64 &

dir=/test3
CUDA_VISIBLE_DEVICES=3 python flat_field_correction_tiff.py "$path$dir"  "$path"_corr"$dir" 134 466 0 2048 0 256 &

