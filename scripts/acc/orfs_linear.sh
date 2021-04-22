#!/bin/bash --login  

INPUT_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/hmd-arg/ORFs

cd $INPUT_DIRECTORY

for f in *_contigs_proteins.faa # for each sample f
do
  n=${f%%_contigs_proteins.faa} # strip part of file name

awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' < ${n}_contigs_proteins.faa > ${n}_contigs_proteins_linear.faa

done

