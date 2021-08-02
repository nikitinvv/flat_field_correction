#!/usr/bin/bash
#SBATCH -N 1
#SBATCH -n 32
#SBATCH --mem 100G
#SBATCH -t 5:00:00
source ~/.bashrc
conda activate sadaf
cd ../sadaf
./run_tomo.sh $1