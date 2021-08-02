path=/data/staff/tomograms/vviknik/experiments/APS/2021-07/Sobhani/radiography

# dir=/s21_new
# proj=129
# flat=130
# mkdir -p "$path"_corr"$dir"
# CUDA_VISIBLE_DEVICES=0 python flat_field_correction.py "$path$dir"/proj_"$proj".h5 "$path$dir"/flat_"$flat".h5 \
# "$path"_corr"$dir"/cproj_"$proj".h5 0 512 0 144 &

# dir=/s20
# proj=126
# flat=124
# mkdir -p "$path"_corr"$dir"
# CUDA_VISIBLE_DEVICES=1 python flat_field_correction.py "$path$dir"/proj_"$proj".h5 "$path$dir"/flat_"$flat".h5 \
# "$path"_corr"$dir"/cproj_"$proj".h5 2000 2448 0 180 &

# dir=/s26
# proj=151
# flat=150
# mkdir -p "$path"_corr"$dir"
# CUDA_VISIBLE_DEVICES=2 python flat_field_correction.py "$path$dir"/proj_"$proj".h5 "$path$dir"/flat_"$flat".h5 \
# "$path"_corr"$dir"/cproj_"$proj".h5 0 1024 0 144 &

# dir=/s26
# proj=148
# flat=147
# mkdir -p "$path"_corr"$dir"
# CUDA_VISIBLE_DEVICES=3 python flat_field_correction.py "$path$dir"/proj_"$proj".h5 "$path$dir"/flat_"$flat".h5 \
# "$path"_corr"$dir"/cproj_"$proj".h5 2000 2448 0 180 &

wait
dir=/s20ethanol
proj=155
flat=152
mkdir -p "$path"_corr"$dir"
CUDA_VISIBLE_DEVICES=0 python flat_field_correction.py "$path$dir"/proj_"$proj".h5 "$path$dir"/flat_"$flat".h5 \
"$path"_corr"$dir"/cproj_"$proj".h5 0 500 0 150 &

dir=/s21ni
proj=187
flat=186
mkdir -p "$path"_corr"$dir"
CUDA_VISIBLE_DEVICES=1 python flat_field_correction.py "$path$dir"/proj_"$proj".h5 "$path$dir"/flat_"$flat".h5 \
"$path"_corr"$dir"/cproj_"$proj".h5 0 512 0 256 &

dir=/s21ni
proj=188
flat=186
mkdir -p "$path"_corr"$dir"
CUDA_VISIBLE_DEVICES=2 python flat_field_correction.py "$path$dir"/proj_"$proj".h5 "$path$dir"/flat_"$flat".h5 \
"$path"_corr"$dir"/cproj_"$proj".h5 0 512 0 256 &

dir=/s26_new
proj=204
flat=203
mkdir -p "$path"_corr"$dir"
CUDA_VISIBLE_DEVICES=3 python flat_field_correction.py "$path$dir"/proj_"$proj".h5 "$path$dir"/flat_"$flat".h5 \
"$path"_corr"$dir"/cproj_"$proj".h5 0 512 0 256 &

wait

dir=/s25ni
proj=197
flat=192
mkdir -p "$path"_corr"$dir"
CUDA_VISIBLE_DEVICES=0 python flat_field_correction.py "$path$dir"/proj_"$proj".h5 "$path$dir"/flat_"$flat".h5 \
"$path"_corr"$dir"/cproj_"$proj".h5 0 512 0 256 &

dir=/s25
proj=145
flat=144
mkdir -p "$path"_corr"$dir"
CUDA_VISIBLE_DEVICES=1 python flat_field_correction.py "$path$dir"/proj_"$proj".h5 "$path$dir"/flat_"$flat".h5 \
"$path"_corr"$dir"/cproj_"$proj".h5 0 512 0 140 &

dir=/s25
proj=146
flat=144
mkdir -p "$path"_corr"$dir"
CUDA_VISIBLE_DEVICES=2 python flat_field_correction.py "$path$dir"/proj_"$proj".h5 "$path$dir"/flat_"$flat".h5 \
"$path"_corr"$dir"/cproj_"$proj".h5 0 512 0 140 &





