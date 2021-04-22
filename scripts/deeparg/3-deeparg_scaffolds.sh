#!/bin/bash --login  

######### Assign path variables ########

INPUT_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/metaSPAdes
DEEPARG_DATA=/mnt/home/vascokar/mastitis_study/bin/deeparg
DEEPARG_ACTIVATE=/mnt/home/vascokar/mastitis_study/bin/env/bin/activate
OUTPUT_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/deepARG/scaffolds

########## Modules to Load ##########

module purge
module load DIAMOND/2.0.1
module load GCCcore/9.3.0
module load Python/2.7.18

########## Code to Run ###########

source $DEEPARG_ACTIVATE

cd $INPUT_DIRECTORY

for dir in */; # for each sample dir
do
  n=${dir%%/} # strip the directory name

deeparg predict \
    --model LS \
    -i $INPUT_DIRECTORY/${n}/scaffolds.fasta \
    -o $OUTPUT_DIRECTORY/${n}_scaffolds_deeparg \
    -d $DEEPARG_DATA \
    --type nucl \
    --min-prob 0.8 \
    --arg-alignment-identity 30 \
    --arg-alignment-evalue 1e-10 \
    --arg-num-alignments-per-entry 1000
done

deactivate
