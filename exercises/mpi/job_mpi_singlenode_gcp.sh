#!/bin/bash
#SBATCH --output=slurm_mpi_singlenode.out
#SBATCH --time=00:05:00
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --gpus-per-node=4
#SBATCH -p t4dws

# Load the latest Julia Module
ml load julia

# Run the Julia code -- we're usign `srun` to launch Julia. This is necessary
# to configure MPI. If you tried to use `MPI.Init()` outside of an srun, then
# the program will crash. Note also that you can't run an srun _insite_ of
# another srun.
srun julia --project diffusion_2d_mpi.jl
