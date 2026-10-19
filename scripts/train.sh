#!/bin/bash

#SBATCH --job-name=SCBM
#SBATCH --output="logs/%x_%j.out" 
#SBATCH --cpus-per-task=2
#SBATCH --time=7-00:00:00
#SBATCH -p gpu
#SBATCH --gres=gpu:1

source ~/.bashrc
conda deactivate
conda activate propagation-cbms
cd ~/thesis/propagation-cbms

python -u train.py "$@"