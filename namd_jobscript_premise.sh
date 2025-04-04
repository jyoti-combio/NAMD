#!/bin/bash
#SBATCH --partition=harish   ###our partion
##SBATCH --nodelist=node164
#SBATCH --job-name=namd_min 
#SBATCH --mail-type=BEGIN,END,FAIL          # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH -N 1
#SBATCH --error=job.%J.err
#SBATCH --output=job.%J.out
#SBATCH --time=2-00:00:00
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=24

#module load namd/NAMD_3.0alpha8_Linux-x86_64-multicore-CUDA-SingleNode
#namd/NAMD_3.0alpha8_Linux-x86_64-multicore-CUDA-SingleNode
#module load namd/NAMD_2.13_Linux-x86_64-multicore-CUDA
module load namd/NAMD_2.14_Linux-x86_64-multicore-CUDA


#/mnt/home/software/NAMD/NAMD_3.0alpha8_Linux-x86_64-multicore-CUDA/namd3 +p 24  equil.namd  > equil.log
namd2 +p 24  Minimization.namd  > minimization.log
