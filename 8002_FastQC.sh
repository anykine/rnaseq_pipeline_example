#!/bin/bash
# a generic template for qsub jobs
#$ -cwd
#$ -o 8002_FastQC.log
#$ -j y
#$ -S /bin/bash
# send email at begin/end of job
#$ -m e
#$ -M rtwang@mednet.ucla.edu
#$ -N samp8002FastQC
#$ -cwd 
#$ -V
#$ -l vf=4G 

hostname
echo "start..."
date

 /share/apps/richard/FastQC-current/fastqc --outdir /scratch1/tmp/rwang/rnaseq/human/RUNS/Dec20/8002/02-FastQC --noextract /scratch1/tmp/rwang/rnaseq/human/RUNS/Dec20/8002/00-raw/8002_1.fastq.gz /scratch1/tmp/rwang/rnaseq/human/RUNS/Dec20/8002/00-raw/8002_2.fastq.gz 

echo "end..."
date
times
