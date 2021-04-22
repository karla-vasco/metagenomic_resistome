#!/bin/bash --login  

#Concatenate files
cd /mnt/scratch/vascokar/mastitis_study/results/kraken2

#Adding file name in reports
for f in *_report.txt; do sed -i 's/$/ '"$f"'/' "$f"; done

#Creating a file with the extracted counts
awk '/Bacteria/{print $0}' *_report.txt > all_bacteria_counts.txt
