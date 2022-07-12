#! /bin/bash

##--Resource Allocation--##
#SBATCH --job-name=02b-paired
#SBATCH --account=training2021
#SBATCH --qos=shortjobs
#SBATCH --cpus-per-task=8
#SBATCH --mem=12G
#SBATCH --out=%x.out
#SBATCH --err=%x.err

# paired end reads

docker run quay.io/biocontainers/bismark:0.23.1--hdfd78af_0 bismark $1 -1 $2 -2 $3
