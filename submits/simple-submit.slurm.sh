#!/bin/bash
#SBATCH --account=qchen2
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=10
#SBATCH --time=00:05:00
#SBATCH --error=myjobresults-%J.err
#SBATCH --output=myjobresults-%J.out
#SBATCH --job-name=SimpleMPIJob1

# Load modules
echo "Slurm nodes assigned :$SLURM_JOB_NODELIST"
module load fsl/.fsl
module use /groups/nlighthall/appmodules
module load nlighthall/python-2.7.8-gcc-4.9.2

mpirun /Users/lighthalllab/Desktop/testing_stokes_new.py 
