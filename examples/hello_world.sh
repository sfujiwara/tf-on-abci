#!/bin/bash

#$ -l rt_F=1
#$ -l h_rt=1:23:45
#$ -j y
#$ -cwd

# Initialize environment modules
source /etc/profile.d/modules.sh

# Load modules
module load python/3.6/3.6.5 cuda/9.0/9.0.176.4 cudnn/7.2/7.2.1

# Run
echo "hell world!"
