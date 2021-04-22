#!/bin/bash --login

module load DIAMOND/2.0.1

cd /mnt/scratch/vascokar/mastitis_study/data/hmd-arg

diamond makedb --in arg_v5.fasta -d hmd-arg
