#! /bin/bash

##--Resource Allocation--##
#SBATCH --job-name=S44-04-methyl-extract
#SBATCH --account=training2021
#SBATCH --qos=shortjobs
#SBATCH --cpus-per-task=8
#SBATCH --mem=16G
#SBATCH --out=%x.out
#SBATCH --err=%x.err

FILENAME=${2%.fastq}
BAM=${FILENAME}_bismark_bt2.bam

docker run quay.io/biocontainers/bismark:0.23.1--hdfd78af_0 bismark_methylation_extractor --bedGraph --gzip --cytosine_report \
--genome_folder $1 \
$2

#docker run quay.io/biocontainers/bismark:0.23.1--hdfd78af_0 bismark_methylation_extractor -s --bedGraph --counts \
#--buffer_size 10G --cytosine_report \
#--genome_folder $1 \
#$BAM
