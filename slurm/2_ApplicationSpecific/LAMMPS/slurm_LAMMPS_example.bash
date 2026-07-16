#!/bin/bash -l

## This file is intended to serve as a template to be downloaded and modified
## for your use case.
##
## For more information, refer to:
## README - https://github.com/ubccr/ccr-examples/tree/main/slurm/README.md
## DOCUMENTATION - https://docs.ccr.buffalo.edu/en/latest/hpc/jobs/

## Select a cluster, partition, QOS, and account appropriate for your use case.
#SBATCH --cluster=[cluster]
#SBATCH --partition=[partition]
#SBATCH --qos=[qos]
#SBATCH --account=[SlurmAccountName]

## Maximum job runtime.
#SBATCH --time=00:10:00

## Request one compute node.
#SBATCH --nodes=1

## Number of MPI tasks.
#SBATCH --ntasks=4

## Memory requested per node, in megabytes.
#SBATCH --mem=4000

## Job name and output file.
#SBATCH --job-name=lammps-example
#SBATCH --output=lammps-example-%j.out

## Load the required compiler, MPI, and LAMMPS modules.
module load gcc/11.2.0 openmpi/4.1.1
module load lammps/23Jun2022-kokkos

## Replace in.lammps with the name of your LAMMPS input file.
srun lmp -in in.lammps
