#!/bin/bash
#SBATCH -A MAT151
#SBATCH --nodes=16
#SBATCH --tasks-per-node=32
#SBATCH --cpus-per-task=1
#SBATCH -t 01:00:00
#SBATCH -J 2.0

export SLURM_NTASKS_PER_NODE=32
export SLURM_CPUS_PER_TASK=1
export OMP_NUM_THREADS=1
export OMP_PLACES=threads
export OMP_PROC_BIND=spread

module load intel
module load hdf5/1.10.7
module load fftw/3.3.8
module load netlib-lapack
module load python
module list

srun --cpu-bind=cores pw.x -nbgrp 16 -input scf.in > scf.out

