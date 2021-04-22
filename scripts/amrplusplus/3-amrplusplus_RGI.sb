#!/bin/bash --login

########## Define Resources Needed with SBATCH Lines ##########
#SBATCH --job-name=AMR++_RGI # give your job a name for easier identification (same as -J)
#SBATCH --time=168:00:00         # limit of wall clock time - how long will the job take to run? (same as -t)
#SBATCH --ntasks=1              # number of tasks - how many tasks (nodes) does your job require? (same as -n)
#SBATCH --cpus-per-task=25      # number of CPUs (or cores) per task (same as -c)
#SBATCH --mem=150G              # memory required per node - amount of memory (in bytes)
#SBATCH --output=/mnt/home/vascokar/mastitis_study/eofiles/AMR++RGI.%j.out #Standard output
#SBATCH --error=/mnt/home/vascokar/mastitis_study/eofiles/AMR++RGI.%j.err #Standard error log

########## Diplay the job context ######
echo Job: $SLUM_JOB_NAME with ID $SLURM_JOB_ID
echo Running on host `hostname`
echo Job started at `date '+%T %a %d %b %Y'`
echo Directory is `pwd`
echo Using $SLURM_NTASKS processors across $SLURM_NNODES nodes

######### Assign path variables ########

INPUT_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/data/raw_sequences
HOST_PATH=/mnt/scratch/vascokar/mastitis_study/data/host/Bos_taurus.ARS-UCD1.2.dna.toplevel.fa.gz
CARD_DB_PATH=/mnt/scratch/vascokar/mastitis_study/data/card/card.json
ADAPTERS_PATH=/mnt/scratch/vascokar/mastitis_study/data/adapters/nextera.fa
OUTPUT_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/AmrPlusPlusv2
WORKING_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/results/AmrPlusPlusv2/work_dir

############# Running with HPCC Version of AmrPlusPlus ############
module purge
module load GCC/8.3.0
module load AmrPlusPlus/2.0.2

nextflow run $EBROOTAMRPLUSPLUS/main_AmrPlusPlus_v2_withRGI.nf -profile singularity \
--reads "$INPUT_DIRECTORY/*_R{1,2}_001.fastq.gz" \
--adapters $ADAPTERS_PATH \
--host $HOST_PATH \
--annotation $EBROOTAMRPLUSPLUS/data/amr/megares_annotations_v1.02.csv \
--amr $EBROOTAMRPLUSPLUS/data/amr/megares_database_v1.02.fasta \
--card_db $CARD_DB_PATH \
--output $OUTPUT_DIRECTORY -w $WORKING_DIRECTORY

##### Final time stamp ######
echo Job finished at `date '+%T %a %d %b %Y'`
