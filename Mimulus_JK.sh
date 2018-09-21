#!/bin/bash 
#SBATCH -D /oasis/scratch/comet/petersto/temp_project/assemblyOutput
#SBATCH -J supernova
#SBATCH --partition=large-shared
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=64
#SBATCH --mem=1400G
#SBATCH --time=48:00:00
#SBATCH -o /oasis/projects/nsf/ddp319/petersto/err_outs/mimulusAssembly.out
#SBATCH -e /oasis/projects/nsf/ddp319/petersto/err_outs/mimulusAssembly.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

export PATH=/oasis/projects/nsf/ddp319/petersto/programs/supernova/supernova-2.0.0:$PATH

supernova run --id=mimulusAssembly \
--fastqs=/oasis/projects/nsf/ddp319/petersto/10X_seqData/Mimulus_JK/ \
--maxreads 168000000 \
--description="Mimulus_JK"