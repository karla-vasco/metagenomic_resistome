#!/bin/bash --login
INPUT_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/metaSPAdes
OUTPUT_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/metaSPAdes/sample_contigs

cd $INPUT_DIRECTORY

for dir in */; # for each sample dir
do
  n=${dir%%/} # strip the directory name

cd $OUTPUT_DIRECTORY
mkdir ${n}

cp $INPUT_DIRECTORY/${n}/{contigs.fasta,scaffolds.fasta}  $OUTPUT_DIRECTORY/${n}
mv $OUTPUT_DIRECTORY/${n}/contigs.fasta  $OUTPUT_DIRECTORY/${n}/${n}_spades_contigs.fasta
mv $OUTPUT_DIRECTORY/${n}/scaffolds.fasta  $OUTPUT_DIRECTORY/${n}/${n}_spades_scaffolds.fasta
done
