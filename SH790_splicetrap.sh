#!/bin/bash
# a generic template for qsub jobs
#$ -cwd
#$ -o SH790_splicetrap.log
#$ -j y
#$ -S /bin/bash
# send email at begin/end of job
#$ -m e
#$ -M rtwang@mednet.ucla.edu
#$ -N sampSH790splicetrap
#$ -cwd 
#$ -V
#$ -l vf=20G 

hostname
echo "start..."
date

 gunzip -c /scratch1/tmp/rwang/rnaseq/human/RUNS/Feb12/SH790/00-raw/SH790_1.fastq.gz > /scratch1/tmp/rwang/rnaseq/human/RUNS/Feb12/SH790/00-raw/SH790_1.fastq
gunzip -c /scratch1/tmp/rwang/rnaseq/human/RUNS/Feb12/SH790/00-raw/SH790_2.fastq.gz > /scratch1/tmp/rwang/rnaseq/human/RUNS/Feb12/SH790/00-raw/SH790_2.fastq
/share/apps/richard/SpliceTrap.0.90.5/SpliceTrap -m bowtie  -d hg19  -s 75  -1 /scratch1/tmp/rwang/rnaseq/human/RUNS/Feb12/SH790/00-raw/SH790_1.fastq  -2 /scratch1/tmp/rwang/rnaseq/human/RUNS/Feb12/SH790/00-raw/SH790_2.fastq  -c M  -o SH790  -outdir /scratch1/tmp/rwang/rnaseq/human/RUNS/Feb12/SH790/05-splicetrap  

echo "end..."
date
times
