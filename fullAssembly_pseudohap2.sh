#!/bin/bash 
#SBATCH -D /oasis/scratch/comet/petersto/temp_project/assemblyOutput/assemblyFull7506_4/outs/assembly
#SBATCH -J supernova
#SBATCH --partition=large-shared
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=64
#SBATCH --mem=1400G
#SBATCH --time=48:00:00
#SBATCH -o /oasis/projects/nsf/ddp319/petersto/err_outs/fullAssembly_pseudohap2.out
#SBATCH -e /oasis/projects/nsf/ddp319/petersto/err_outs/fullAssembly_pseudohap2.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

export PATH=/oasis/projects/nsf/ddp319/petersto/programs/supernova/supernova-2.0.0:$PATH


supernova mkoutput \
--asmdir=/oasis/scratch/comet/petersto/temp_project/assemblyOutput/fullAssembly/outs/assembly \
--outprefix=/oasis/projects/nsf/ddp319/petersto/assembly_FASTA/fullAssembly_pseudohap2 \
--style=pseudohap2 \
--headers=full