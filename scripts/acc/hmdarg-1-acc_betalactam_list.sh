#!/bin/bash --login
INPUT_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/hmd-arg/mapped
OUTPUT_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/ARG_host/acc-hmdarg/betalactam-list

cd $INPUT_DIRECTORY

for f in *_hmdarg_matches.sam # for each sample f
do
  n=${f%%_hmdarg_matches.sam} # strip part of file name

awk '/beta_lactam/{print $1}' ${n}_hmdarg_matches.sam > $OUTPUT_DIRECTORY/${n}_beta-lactam_contigsall.lst
uniq -u $OUTPUT_DIRECTORY/${n}_beta-lactam_contigsall.lst $OUTPUT_DIRECTORY/${n}_beta-lactam_contigs.lst

done
