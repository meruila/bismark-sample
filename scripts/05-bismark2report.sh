#! /bin/bash

##--Resource Allocation--##
#SBATCH --job-name=8-05-processing-report
#SBATCH --account=training2021
#SBATCH --qos=shortjobs
#SBATCH --cpus-per-task=8
#SBATCH --mem=12G
#SBATCH --out=%x.out
#SBATCH --err=%x.err

# docker run quay.io/biocontainers/bismark:0.23.1--hdfd78af_0 bismark2report --alignment_report $1

docker run quay.io/biocontainers/bismark:0.23.1--hdfd78af_0 bismark2report
