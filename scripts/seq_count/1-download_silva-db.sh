#!/bin/bash --login  

module load  GCC/9.3.0  OpenMPI/4.0.3
module load Kraken2/2.1.0-Perl-5.30.2

cd /mnt/home/vascokar/mastitis_study/data/kraken2

wget https://genome-idx.s3.amazonaws.com/kraken/16S_Silva138_20200326.tgz

kraken2-build  --special "silva" --clean  --db silva
kraken2-build  --special "silva"  --db silva
