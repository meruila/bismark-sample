#! /bin/bash

##--Resource Allocation--##
#SBATCH --job-name=xy-bismark
#SBATCH --account=training2021
#SBATCH --qos=shortjobs
#SBATCH --cpus-per-task=8
#SBATCH --mem=6G
#SBATCH --out=%x.out
#SBATCH --err=%x.err

# single end reads

docker run quay.io/biocontainers/bismark:0.23.1--hdfd78af_0 bismark $1 $2
