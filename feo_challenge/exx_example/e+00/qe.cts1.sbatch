#!/bin/bash
#SBATCH --job-name feodft
#SBATCH --account=fy140244
#SBATCH -N 4
#SBATCH --ntasks-per-node=36
#SBATCH --cpus-per-task=1
#SBATCH -t 8:00:00

module purge
module load intel/18.0.2.199
module load openmpi-intel/3.0
module load mkl/18.0.2.199
module list

source /projects/global/toss3/compilers/intel/intel_2018/compilers_and_libraries_2018.2.199/linux/tbb/bin/tbbvars.sh intel64
source /projects/global/toss3/compilers/intel/intel_2018/compilers_and_libraries_2018.2.199/linux/mkl/bin/mklvars.sh intel64

export OMP_NUM_THREADS=1
export QE_ROOT=/projects/lsgroup/qmcpack/external_codes/quantum_espresso/6.2.1
mpiexec $QE_ROOT/bin/pw.x -nk 4 -input scf.in > scf.out

