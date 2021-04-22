#!/bin/bash --login

cd /mnt/scratch/vascokar/mastitis_study/data/card

module load DIAMOND/2.0.1

diamond makedb --in protein_fasta_protein_homolog_model.fasta -d card-homolog
