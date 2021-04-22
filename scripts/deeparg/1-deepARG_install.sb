#!/bin/bash --login  
 
########## Define Resources Needed with SBATCH Lines ##########
#SBATCH --job-name=DeepARG_install# give your job a name for easier identification (same as -J)
#SBATCH --time=168:00:00 # limit of wall clock time - how long will the job take to run? (same as -t)
#SBATCH --ntasks=1     # number of tasks - how many tasks (nodes) does your job require? (same as -n)
#SBATCH --cpus-per-task=4 # number of CPUs (or cores) per task (same as -c)
#SBATCH --mem=50G     # memory required per node - amount of memory (in bytes)
#SBATCH --output=/mnt/scratch/vascokar/mastitis_study/eofiles/DeepARG_install.%j.out #Standard output
#SBATCH --error=/mnt/scratch/vascokar/mastitis_study/eofiles/DeepARG_install.%j.err #Standard error log

########## Diplay the job context ######
echo Job: $SLUM_JOB_NAME with ID $SLURM_JOB_ID
echo Running on host `hostname`
echo Job started at `date '+%T %a %d %b %Y'`
echo Directory is `pwd`
echo Using $SLURM_NTASKS processors across $SLURM_NNODES nodes

######### Assign path variables ########

INSTALL_DIRECTORY=/mnt/home/vascokar/mastitis_study/bin

#Installation manual in https://bitbucket.org/gusphdproj/deeparg-ss/src/master/

#Create a new folder to install deepARG

cd $INSTALL_DIRECTORY
mkdir deeparg
cd deeparg

#Create a virtual environment with virtualenv

virtualenv env
source env/bin/activate

module load DIAMOND/2.0.1
module load GCCcore/9.3.0
module load Python/2.7.18

#Install deeparg with pip and download the data required by deeparg
pip install deeparg==1.0.2
deeparg download_data -o $INSTALL_DIRECTORY/deeparg

###It took foreeeever to download data (about 6 hours)

#To re-activate the virtual environment:

source env/bin/activate

#To deactivate

deactivate

##### Final time stamp ######
echo Job finished at `date '+%T %a %d %b %Y'`
