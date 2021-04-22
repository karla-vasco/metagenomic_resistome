#!/bin/bash --login  
INPUT_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/hmd-arg/ORFs/fasta
LIST_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/ARG_host/acc-hmdarg/lists
OUTPUT_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/ARG_host/acc-hmdarg/fasta

module load  GCC/9.3.0
module load seqtk/1.3

cd $LIST_DIRECTORY
for f in *_beta-lactam_contigs.lst # for each sample f
do
  n=${f%%_beta-lactam_contigs.lst} # strip part of file name
 
seqtk subseq $INPUT_DIRECTORY/${n}_contigs_proteins.fa $LIST_DIRECTORY/${n}_beta-lactam_contigs.lst > $OUTPUT_DIRECTORY/${n}_beta-lactam_ARG_contigs.fasta
done
