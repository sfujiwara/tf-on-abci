#!/bin/bash

#$ -l rt_F=2
#$ -o log/
#$ -e log/
#$ -cwd

# Initialize environment modules
source /etc/profile.d/modules.sh

# Load modules
module load gcc/7.4.0 python/3.8/3.8.2 cuda/10.1/10.1.243 cudnn/7.6/7.6.5 openmpi/2.1.6

# Run
echo "hell world!"
pwd
ls ~/
hostname

# Python
source ~/tf/bin/activate
python --version

# MPI
mpirun -N 1 python hello_world.py
