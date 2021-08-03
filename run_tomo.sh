path=/data/staff/tomograms/vviknik/experiments/APS/2021-07/Sobhani

echo $1 
if [ $1 -eq 0 ]
then
proj=s01plus_3d_161
flat=flat_fields_s01plus_3d_161
dark=dark_fields_s01plus_3d_161
mkdir -p "$path"_corr
python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 0 2048 0 256 
fi
echo $1 
if [ $1 -eq 1 ]
then
proj=s01plus_3d_ethanol_162
flat=flat_fields_s01plus_3d_ethanol_162
dark=dark_fields_s01plus_3d_ethanol_162
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 2 ]
then
proj=s01plus_3d_ethanol_163
flat=flat_fields_s01plus_3d_ethanol_163
dark=dark_fields_s01plus_3d_ethanol_163
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 3 ]
then
proj=s03_3d_171
flat=flat_fields_s03_3d_171
dark=dark_fields_s03_3d_171
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 

fi
echo $1 
if [ $1 -eq 4 ]
then
proj=s04_3d_164
flat=flat_fields_s04_3d_164
dark=dark_fields_s04_3d_164
mkdir -p "$path"_corr
python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 5 ]
then
proj=s04_3d_184
flat=flat_fields_s04_3d_184
dark=dark_fields_s04_3d_184
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 6 ]
then
proj=s05_3d_173
flat=flat_fields_s05_3d_173
dark=dark_fields_s05_3d_173
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 7 ]
then
proj=s06_3d_ethanol_156
flat=flat_fields_s06_3d_ethanol_156
dark=dark_fields_s06_3d_ethanol_156
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 8 ]
then

proj=s06_3d_ethanol_157
flat=flat_fields_s06_3d_ethanol_157
dark=dark_fields_s06_3d_ethanol_157
mkdir -p "$path"_corr
python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 9 ]
then
proj=s10_3d_165
flat=flat_fields_s10_3d_165
dark=dark_fields_s10_3d_165
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 10 ]
then
proj=s12_3d_166
flat=flat_fields_s12_3d_166
dark=dark_fields_s12_3d_166
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 11 ]
then
proj=s13_3d_123
flat=flat_fields_s13_3d_123
dark=dark_fields_s13_3d_123
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 12 ]
then
proj=s14_3d_167
flat=flat_fields_s13_3d_167
dark=dark_fields_s13_3d_167
mkdir -p "$path"_corr
python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 13 ]
then
proj=s16_3d_168
flat=flat_fields_s13_3d_168
dark=dark_fields_s13_3d_168
mkdir -p "$path"_corr
python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 14 ]
then
proj=s17_3d_160
flat=flat_fields_s17_3d_160
dark=dark_fields_s17_3d_160
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 15 ]
then
proj=s18_3d_169
flat=flat_fields_s18_3d_169
dark=dark_fields_s18_3d_169
mkdir -p "$path"_corr
python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 16 ]
then
proj=s19_3d_ethanol_159
flat=flat_fields_s13_3d_ethanol_159
dark=dark_fields_s13_3d_ethanol_159
mkdir -p "$path"_corr
python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 17 ]
then
proj=s20_2d_101
flat=flat_fields_s20_2d_101
dark=dark_fields_s20_2d_101
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 18 ]
then
proj=s20_2d_103
flat=flat_fields_s20_2d_103
dark=dark_fields_s20_2d_103
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 19 ]
then
proj=s20_3d_170
flat=flat_fields_s20_3d_170
dark=dark_fields_s20_3d_170
mkdir -p "$path"_corr
python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 20 ]
then
proj=s21_3d_ethanol_158
flat=flat_fields_s21_3d_ethanol_158
dark=dark_fields_s21_3d_ethanol_158
mkdir -p "$path"_corr
python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 21 ]
then
proj=s21_2d_098
flat=flat_fields_s21_2d_098
dark=dark_fields_s21_2d_098
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 22 ]
then
proj=s21_2d_100
flat=flat_fields_s21_2d_100
dark=dark_fields_s21_2d_100
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 23 ]
then
proj=s21_3d_112
flat=flat_fields_s21_3d_112
dark=dark_fields_s21_3d_112
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 24 ]
then
proj=s21_3d_113
flat=flat_fields_s21_3d_113
dark=dark_fields_s21_3d_113
mkdir -p "$path"_corr
python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 25 ]
then
proj=s21_3d_114
flat=flat_fields_s21_3d_114
dark=dark_fields_s21_3d_114
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 26 ]
then
proj=s21_3d_132
flat=flat_fields_s21_3d_132
dark=dark_fields_s21_3d_132
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 27 ]
then
proj=s21_3d_133
flat=flat_fields_s21_3d_133
dark=dark_fields_s21_3d_133
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 28 ]
then
proj=s21_3d_142
flat=flat_fields_s21_3d_142
dark=dark_fields_s21_3d_142
mkdir -p "$path"_corr
python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 29 ]
then
proj=s21_3d_206
flat=flat_fields_s21_3d_206
dark=dark_fields_s21_3d_206
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 30 ]
then
proj=s21_3d_ethanol_158
flat=flat_fields_s21_3d_ethanol_158
dark=dark_fields_s21_3d_ethanol_158
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 31 ]
then
proj=s22_3d_075
flat=flat_fields_s22_3d_075
dark=dark_fields_s22_3d_075
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 32 ]
then
proj=s22_3d_076
flat=flat_fields_s22_3d_076
dark=dark_fields_s22_3d_076
mkdir -p "$path"_corr
python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 33 ]
then
proj=s22_3d_077
flat=flat_fields_s22_3d_077
dark=dark_fields_s22_3d_077
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 34 ]
then
proj=s22_3d_138
flat=flat_fields_s22_3d_138
dark=dark_fields_s22_3d_138
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 35 ]
then
proj=s22_3d_139
flat=flat_fields_s22_3d_139
dark=dark_fields_s22_3d_139
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 36 ]
then
proj=s23_3d_111
flat=flat_fields_s23_3d_111
dark=dark_fields_s23_3d_111
mkdir -p "$path"_corr
python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 37 ]
then
proj=s23_3d_122
flat=flat_fields_s23_3d_122
dark=dark_fields_s23_3d_122
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 38 ]
then
proj=s24_3d_104
flat=flat_fields_s24_3d_104
dark=dark_fields_s24_3d_104
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 39 ]
then
proj=s24_3d_105
flat=flat_fields_s24_3d_105
dark=dark_fields_s24_3d_105
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 40 ]
then
proj=s24_3d_106
flat=flat_fields_s24_3d_106
dark=dark_fields_s24_3d_106
mkdir -p "$path"_corr
python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 41 ]
then
proj=s24_3d_107
flat=flat_fields_s24_3d_107
dark=dark_fields_s24_3d_107
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 42 ]
then
proj=s24_3d_108
flat=flat_fields_s24_3d_107
dark=dark_fields_s24_3d_107
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 43 ]
then
proj=s24_3d_109
flat=flat_fields_s24_3d_107
dark=dark_fields_s24_3d_107
mkdir -p "$path"_corr
 python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 44 ]
then
proj=s24_3d_110
flat=flat_fields_s24_3d_110
dark=dark_fields_s24_3d_110
mkdir -p "$path"_corr
python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
"$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
echo $1 
if [ $1 -eq 45 ]
then
for k in {085..092} 131 190 191; do
    proj=s25_3d_"$k"
    flat=flat_fields_s25_3d_"$k"
    dark=dark_fields_s25_3d_"$k"
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
done    
fi
echo $1 
if [ $1 -eq 46 ]
then
for k in {172} {207..218}; do
    proj=s02_3d_"$k"
    flat=flat_fields_s02_3d_"$k"
    dark=dark_fields_s02_3d_"$k"
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
done    
fi
echo $1 
if [ $1 -eq 47 ]
then
for k in {078..084} 140 141 205; do
    proj=s06_3d_"$k"
    flat=flat_fields_s06_3d_"$k"
    dark=dark_fields_s06_3d_"$k"
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
done    
fi
echo $1 
if [ $1 -eq 48 ]
then
for k in {045..052} 134 135 219; do
    proj=s07_3d_"$k"
    flat=flat_fields_s07_3d_"$k"
    dark=dark_fields_s07_3d_"$k"
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
done    
fi
# echo $1 
# if [ $1 -eq 49 ]
# then
# for k in {057..069} {093..096} 136; do
#     proj=s08_3d_"$k"
#     flat=flat_fields_s08_3d_"$k"
#     dark=dark_fields_s08_3d_"$k"
#     mkdir -p "$path"_corr
#      python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
#     "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
# done    
# fi
echo $1 
if [ $1 -eq 50 ]
then
for k in {174..183}; do
    proj=s09_3d_"$k"
    flat=flat_fields_s09_3d_"$k"
    dark=dark_fields_s09_3d_"$k"
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
done    
fi
echo $1 
if [ $1 -eq 51 ]
then    
for k in {115..121}; do
    proj=s11_3d_"$k"
    flat=flat_fields_s11_3d_"$k"
    dark=dark_fields_s11_3d_"$k"
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512
done 
fi

# {057..069} {093..096} 136
echo $1 
if [ $1 -eq 52 ]
then
    proj=s08_3d_57
    flat=flat_fields_s08_3d_58
    dark=dark_fields_s08_3d_58
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 53 ]
then
    proj=s08_3d_58
    flat=flat_fields_s08_3d_58
    dark=dark_fields_s08_3d_58
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 54 ]
then
    proj=s08_3d_59
    flat=flat_fields_s08_3d_59
    dark=dark_fields_s08_3d_59
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 55 ]
then
    proj=s08_3d_60
    flat=flat_fields_s08_3d_59
    dark=dark_fields_s08_3d_59
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 56 ]
then
    proj=s08_3d_61
    flat=flat_fields_s08_3d_61
    dark=dark_fields_s08_3d_61
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 57 ]
then
    proj=s08_3d_62
    flat=flat_fields_s08_3d_61
    dark=dark_fields_s08_3d_61
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 57 ]
then
    proj=s08_3d_62
    flat=flat_fields_s08_3d_61
    dark=dark_fields_s08_3d_61
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 58 ]
then
    proj=s08_3d_63
    flat=flat_fields_s08_3d_63
    dark=dark_fields_s08_3d_63
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 59 ]
then
    proj=s08_3d_64
    flat=flat_fields_s08_3d_63
    dark=dark_fields_s08_3d_63
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 60 ]
then
    proj=s08_3d_65
    flat=flat_fields_s08_3d_65
    dark=dark_fields_s08_3d_65
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 61 ]
then
    proj=s08_3d_66
    flat=flat_fields_s08_3d_65
    dark=dark_fields_s08_3d_65
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 62 ]
then
    proj=s08_3d_67
    flat=flat_fields_s08_3d_67
    dark=dark_fields_s08_3d_67
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 63 ]
then
    proj=s08_3d_68
    flat=flat_fields_s08_3d_67
    dark=dark_fields_s08_3d_67
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 64 ]
then
    proj=s08_3d_69
    flat=flat_fields_s08_3d_69
    dark=dark_fields_s08_3d_69
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 65 ]
then
    proj=s08_3d_93
    flat=flat_fields_s08_3d_94
    dark=dark_fields_s08_3d_94
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 66 ]
then
    proj=s08_3d_94
    flat=flat_fields_s08_3d_94
    dark=dark_fields_s08_3d_94
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 67 ]
then
    proj=s08_3d_95
    flat=flat_fields_s08_3d_94
    dark=dark_fields_s08_3d_94
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 68 ]
then
    proj=s08_3d_96
    flat=flat_fields_s08_3d_96
    dark=dark_fields_s08_3d_96
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi

if [ $1 -eq 69 ]
then
    proj=s08_3d_136
    flat=flat_fields_s08_3d_136
    dark=dark_fields_s08_3d_136
    mkdir -p "$path"_corr
     python flat_field_correction_tomo.py "$path"/"$proj".h5 "$path"/"$flat".h5 "$path"/"$dark".h5 \
    "$path"/tomography_corr/"$proj".h5 2192 2448 0 512 
fi
