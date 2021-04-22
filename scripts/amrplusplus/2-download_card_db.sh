#!/bin/bash --login

cd /mnt/scratch/vascokar/mastitis_study/data/card

wget https://card.mcmaster.ca/latest/data

tar -xvf data ./*.fasta
tar -xvf data ./*.tsv
tar -xvf data ./*.json
