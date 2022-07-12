#! /bin/bash

##--Resource Allocation--##
#SBATCH --job-name=gene-prep
#SBATCH --account=training2021
#SBATCH --qos=shortjobs
#SBATCH --cpus-per-task=8
#SBATCH --mem=10G
#SBATCH --out=%x.out
#SBATCH --err=%x.err

docker run quay.io/biocontainers/bismark:0.23.1--hdfd78af_0 bismark_genome_preparation $1
