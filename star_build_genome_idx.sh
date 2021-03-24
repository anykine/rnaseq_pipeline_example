#!/bin/bash

# For 36bp reads, want 35bp
STAR=/labshares/nelsonlab1/share/apps/STAR-2.6.1d/bin/Linux_x86_64_static/STAR
BASEOUTDIR=/home/rtwang/projects/indexes/star_res
BASEREFDIR=/home/rwang
GENOME_DIR=$BASEOUTDIR/hg19_35bp
WG_FASTA=/home/rtwang/projects/indexes/hg19/igenomes/Homo_sapiens/Ensembl/GRCh37/Sequence/WholeGenomeFasta/genome.fa
GTF=/home/rtwang/projects/indexes/hg19/igenomes/Homo_sapiens/Ensembl/GRCh37/Annotation/Genes/genes.gtf
$STAR \
 --runThreadN 48 \
 --runMode genomeGenerate \
 --genomeDir $GENOME_DIR \
 --genomeFastaFiles $WG_FASTA \
 --sjdbGTFfile $GTF \
 --sjdbOverhang 35
