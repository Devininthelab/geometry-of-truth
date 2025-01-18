#!/bin/bash
#SBATCH --partition=UGGPU-TC1 
#SBATCH --qos=normal 
#SBATCH --nodes=1 
#SBATCH --mem=10G              
#SBATCH --time=360              
#SBATCH --job-name=gen_acts  
#SBATCH --output=output_%x_%j.out 
#SBATCH --error=error_%x_%j.err

# Load necessary modules
module load anaconda 

# Activate your Conda environment
source activate RunJupyter 

# Execute the Python script
python generate_acts.py --model llama-2-7b --layers 8 10 12 --datasets cities neg_cities --device cuda:0