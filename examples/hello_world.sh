#!/bin/bash

#$ -l rt_F=2
#$ -j y
#$ -cwd

# Initialize environment modules
source /etc/profile.d/modules.sh

# Load modules
module load python/3.6/3.6.5 cuda/9.0/9.0.176.4 cudnn/7.2/7.2.1 openmpi/2.1.5

# Run
echo "hell world!"
pwd
ls ~/
hostname

# Python
source ~/tf/bin/activate
python3 --version

# MPI
# mpirun -n 2 -np 1 python3 hello_world.py
mpirun python3 hello_world.py
