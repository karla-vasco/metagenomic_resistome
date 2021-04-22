#!/bin/bash --login  
INPUT_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/deepARG/contigs
OUTPUT_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/ARG_host/acc

cd $INPUT_DIRECTORY

for f in *contigs_deeparg.mapping.ARG # for each sample f
do
  n=${f%%contigs_deeparg.mapping.ARG} # strip part of file name

awk '/beta-lactam/{print $4}' ${n}contigs_deeparg.mapping.ARG > $OUTPUT_DIRECTORY/${n}_beta-lactam_ARG_contigs.lst

awk '/beta-lactam/{print $4}' $INPUT_DIRECTORY/${n}contigs_deeparg.mapping.potential.ARG > $OUTPUT_DIRECTORY/${n}_beta-lactam_potentialARG_contigs.lst

sed -i 1d $OUTPUT_DIRECTORY/${n}_beta-lactam_ARG_contigs.lst
sed -i 1d $OUTPUT_DIRECTORY/${n}_beta-lactam_potentialARG_contigs.lst
done
