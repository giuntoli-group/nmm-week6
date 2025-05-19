#!/bin/bash
#SBATCH --job-name=PLA_all_atom
#SBATCH --time=08:00:00
#SBATCH --partition=parallelshort
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2

module load LAMMPS/23Jun2022-foss-2021b-kokkos
srun lmp -in PLA_CHARMM.in > out.lammps
