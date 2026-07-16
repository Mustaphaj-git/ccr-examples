# LAMMPS Slurm Example

LAMMPS (Large-scale Atomic/Molecular Massively Parallel Simulator) is an open-source molecular dynamics software package used to simulate materials, biomolecules, polymers, and other particle-based systems.

Provided in this repository is a [Slurm script](./slurm_LAMMPS_example.bash) and a small [LAMMPS input file](./in.lammps) that can be used as a starting point for running LAMMPS simulations on CCR's clusters.

## How to use

The provided input file runs a small Lennard-Jones particle simulation. It is intended only as a quick test to demonstrate how to submit and run a LAMMPS job on CCR.

Keep the Slurm script and input file in the same working directory. Before submitting the job, replace the placeholders in the Slurm script with values appropriate for your CCR account and allocation.

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
