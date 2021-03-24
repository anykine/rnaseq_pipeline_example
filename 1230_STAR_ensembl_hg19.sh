#!/bin/bash
# a generic template for qsub jobs
#$ -cwd
#$ -o 1230_STAR_ensembl_hg19.log
#$ -j y
#$ -S /bin/bash
# send email at begin/end of job
#$ -m e
#$ -M rtwang@mednet.ucla.edu
#$ -N j1230ensembl_hg19
#$ -cwd 
#$ -V
#$ -l vf=40G 

hostname
echo "start..."
date

 /share/apps/star_2.5.0a/bin/STAR --runThreadN 24  --genomeDir /home/rtwang/projects/indexes/star_res/hg19 --readFilesIn /home/rtwang/projects/rnaseq/human/RUNS/Jul13/1230/00-raw/1230_1.fastq.gz /home/rtwang/projects/rnaseq/human/RUNS/Jul13/1230/00-raw/1230_2.fastq.gz  --outSAMtype BAM SortedByCoordinate --outFileNamePrefix /home/rtwang/projects/rnaseq/human/RUNS/Jul13/1230/03-alignSTAR/1230 --genomeLoad LoadAndKeep  --limitBAMsortRAM 10737412742 --outReadsUnmapped Fastx --readFilesCommand zcat  --twopassMode None  

echo "end..."
date
times
