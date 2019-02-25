#!/bin/bash

#$ -l rt_F=1
#$ -l h_rt=1:23:45
#$ -j y
#$ -cwd

# Initialize environment modules
source /etc/profile.d/modules.sh

# Load modules
module load cuda/9.2/9.2.88.1

# Run
echo "hell world!"
