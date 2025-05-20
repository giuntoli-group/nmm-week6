#!/bin/bash
#SBATCH --job-name=COA_run_10k
#SBATCH --time=08:00:00
#SBATCH --partition=parallelshort
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=50

module load LAMMPS/23Jun2022-foss-2021b-kokkos
srun  lmp -in run.in > out.lammps
