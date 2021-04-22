#!/bin/bash --login  

######### Assign path variables ########

OUTPUT_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/QUAST

########## Modules to Load ##########

module load  GCC/7.3.0-2.30  OpenMPI/3.1.1
module load MultiQC/1.7-Python-3.6.6


########## Code to Run ###########

multiqc $OUTPUT_DIRECTORY/*/runs_per_reference/*/report.tsv -o $OUTPUT_DIRECTORY
multiqc $OUTPUT_DIRECTORY/*/combined_reference/report.tsv -o $OUTPUT_DIRECTORY
multiqc $OUTPUT_DIRECTORY/*/not_aligned/report.tsv -o $OUTPUT_DIRECTORY
