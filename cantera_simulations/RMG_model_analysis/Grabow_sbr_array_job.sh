#!/bin/sh

#SBATCH -N 1
#SBATCH -n 1
#SBATCH --time=2:00:00
#SBATCH --mem=20GB
#SBATCH --exclude=c5003
#SBATCH --job-name=grabDeut
#SBATCH --output=logs/deut_grabow.%a.log
#SBATCH --error=logs/deut_grabow.%a.slurm.log
#SBATCH --partition=short
#SBATCH --mail-user=blais.ch@northeastern.edu 
#SBATCH --mail-type=FAIL,END

#an array for the job. usually 107, testing use 2
#SBATCH --array=0-107


####################################################
source ~/_02_RMG_envs/RMG_julia_env/.config_file
source activate rmg_julia_env
python -u Grabow_sbr_script.py