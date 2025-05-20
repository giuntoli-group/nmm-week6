#!/bin/bash
#SBATCH --job-name=BB_eq
#SBATCH --time=08:00:00
#SBATCH --partition=parallelshort
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=12

module load LAMMPS/23Jun2022-foss-2021b-kokkos
srun lmp -in equilibration.in > out.lammps
