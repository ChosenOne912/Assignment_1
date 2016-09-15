#!/bin/bash
# My job's description
#PBS -l nodes=hpc-2.csc.tntech.edu
#PBS -l walltime=01:00:00
#PBS -N pi_Calculations
#PBS -m bea
#PBS -M sghafoor@tntech.edu
cd ~/CSC5760/Assignment_1/

echo "*****pi1*****" >> pi_runs.txt
./pi1.run 10000 >>  pi_runs.txt

