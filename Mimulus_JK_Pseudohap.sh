#!/bin/bash 
#SBATCH -D /oasis/scratch/comet/petersto/temp_project/assemblyOutput/mimulusAssembly/outs/assembly
#SBATCH -J supernova
#SBATCH --partition=compute
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=24
#SBATCH --time=48:00:00
#SBATCH -o /oasis/projects/nsf/ddp319/petersto/err_outs/Mimulus_JK_Pseudohap.out
#SBATCH -e /oasis/projects/nsf/ddp319/petersto/err_outs/Mimulus_JK_Pseudohap.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

export PATH=/oasis/projects/nsf/ddp319/petersto/programs/supernova/supernova-2.0.0:$PATH


supernova mkoutput \
--asmdir=/oasis/scratch/comet/petersto/temp_project/assemblyOutput/mimulusAssembly/outs/assembly \
--outprefix=/oasis/projects/nsf/ddp319/petersto/assembly_FASTA/Mimulus_JK_Pseudohap \
--style=pseudohap \
--headers=full