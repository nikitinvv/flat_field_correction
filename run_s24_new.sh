path=/data/staff/tomograms/vviknik/experiments/APS/2021-07/Sobhani/radiography

dir=/s24_new
proj=004
flat=001
mkdir -p "$path"_corr"$dir"
CUDA_VISIBLE_DEVICES=1 python flat_field_correction_s24.py "$path$dir"/proj_"$proj".h5 "$path$dir"/flat_"$flat".h5 \
"$path"_corr"$dir"/cproj_"$proj".h5 0 128 0 64 &





