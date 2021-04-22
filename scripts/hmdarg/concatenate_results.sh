#!/bin/bash --login

cd /mnt/scratch/vascokar/mastitis_study/results/hmd-arg/resistome_analyzer

cat *_hmdarg_class.tsv > all_hmdarg_class.tsv
cat *_hmdarg_mech.tsv > all_hmdarg_gene.tsv
cat *_hmdarg_gene.tsv > all_hmdarg_identifier.tsv
