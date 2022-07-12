#! /bin/bash

##--Resource Allocation--##
#SBATCH --job-name=S44-03-deduplicate
#SBATCH --account=training2021
#SBATCH --qos=shortjobs
#SBATCH --cpus-per-task=8
#SBATCH --mem=12G
#SBATCH --out=%x.out
#SBATCH --err=%x.err

docker run quay.io/biocontainers/bismark:0.23.1--hdfd78af_0 deduplicate_bismark --bam $1
