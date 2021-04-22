#!/bin/bash --login

cd /mnt/scratch/vascokar/mastitis_study/results/CARD/resistome_analyzer

cat *_homolog_class.tsv > all_homolog_class.tsv
cat *_homolog_mech.tsv > all_homolog_group.tsv
cat *_homolog_gene.tsv > all_homolog_header.tsv
