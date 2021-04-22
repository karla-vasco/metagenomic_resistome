#!/bin/bash --login

#The database was downloaded before running AmrPlusPlus. Run this code if you did not do it
cd /mnt/scratch/vascokar/mastitis_study/data/card

wget https://card.mcmaster.ca/latest/data
tar -xvf data ./*.fasta
tar -xvf data ./*.tsv
