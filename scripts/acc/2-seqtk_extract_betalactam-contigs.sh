#!/bin/bash --login  
INPUT_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/metaSPAdes
LIST_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/ARG_host/acc-deepARG/betalactam-list
OUTPUT_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/ARG_host/acc-deepARG/betalactam-contigs

module load  GCC/9.3.0
module load seqtk/1.3

cd $INPUT_DIRECTORY

for dir in */; # for each sample dir
do
  n=${dir%%/} # strip the directory name

seqtk subseq $INPUT_DIRECTORY/${n}/contigs.fasta $LIST_DIRECTORY/${n}beta-lactam_ARG_contigs.lst > $OUTPUT_DIRECTORY/${n}beta-lactam_ARG_contigs.fasta
done
