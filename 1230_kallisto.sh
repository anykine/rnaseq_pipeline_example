#!/bin/bash
# a generic template for qsub jobs
#$ -cwd
#$ -o 1230_kallisto.log
#$ -j y
#$ -S /bin/bash
# send email at begin/end of job
#$ -m e
#$ -M rtwang@mednet.ucla.edu
#$ -N j1230kallisto
#$ -cwd 
#$ -V
#$ -l vf=20G 

hostname
echo "start..."
date

 /home/rtwang/bin/kallisto_linux-v0.44.0/kallisto quant  -i /home/rtwang/projects/indexes/hg19/kallisto/ensembl_GRCh37_transcripts_index  -o /home/rtwang/projects/rnaseq/human/RUNS/Jul13/1230/05-kallisto  -t 8  -b 100  /home/rtwang/projects/rnaseq/human/RUNS/Jul13/1230/00-raw/1230_1.fastq.gz  /home/rtwang/projects/rnaseq/human/RUNS/Jul13/1230/00-raw/1230_2.fastq.gz  

echo "end..."
date
times
