#Installation manual in https://bitbucket.org/gusphdproj/deeparg-ss/src/master/

#Create a new folder to install deepARG

cd /mnt/home/vascokar/mastitis_study/bin/
mkdir deepARG
cd deepARG

#Create a virtual environment with virtualenv

virtualenv env
source env/bin/activate

module load DIAMOND/2.0.1
module load GCCcore/9.3.0
module load Python/2.7.18

#Install deeparg with pip and download the data required by deeparg
pip install deeparg==1.0.2
deeparg download_data -o /mnt/home/vascokar/mastitis_study/bin/deeparg

###It took foreeeever to download data (about 6 hours)

#To re-activate the virtual environment:

source env/bin/activate

#To deactivate

deactivate
