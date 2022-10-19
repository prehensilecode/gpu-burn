#!/bin/bash
#SBATCH -p gpu
#SBATCH -w gpu002
#SBATCH --gpus=4
#SBATCH --mem-per-gpu=40G
#SBATCH --time=0:10:00

module load cuda11.4/toolkit
module load cuda11.4/blas
module load cuda11.4/fft
module load cuda11.4/nsight
module load cuda11.4/profiler

echo "Burn with doubles..."
./gpu_burn -d 120

echo "Burn with tensor cores..."
./gpu_burn -tc 120

