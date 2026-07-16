# LAMMPS Slurm Example

LAMMPS (Large-scale Atomic/Molecular Massively Parallel Simulator) is an open-source molecular dynamics software package used to simulate materials, biomolecules, polymers, and other particle-based systems.

Provided in this repository is a [Slurm script](./slurm_LAMMPS_example.bash) that can be used as a starting point for running LAMMPS simulations on CCR's clusters.

## How to use

The provided example does not include any input data by default. This is intentional, so users can customize the workflow and run simulations with their own input files while becoming familiar with LAMMPS.

The example script loads the required compiler, MPI, and LAMMPS modules before running the simulation.

Replace the example input filename (`in.lammps`) in the Slurm script with the name of your own LAMMPS input file before submitting your job.

Submit the job using:

```bash
sbatch slurm_LAMMPS_example.bash
```

The example executes LAMMPS using:

```bash
srun lmp -in in.lammps
```

## Additional Information

- Refer to the [official LAMMPS documentation](https://docs.lammps.org/) for information about creating input files and running simulations.
- The [Slurm README](../../README.md) provides details on general Slurm usage.
- The [Placeholders](../../../README.md#placeholders) section lists the available options for each placeholder used in the example scripts.
- The [slurm-options.bash](../../slurm-options.bash) file outlines commonly used `#SBATCH` directives with their descriptions.
