#!/bin/bash
# My job's description
#PBS -l walltime=01:00:00
#PBS -N Austin_Wade_Pi
#PBS -m bea
#PBS -M wawade42@students.tntech.edu
cd ~/parallel_programming/assignment_1/

echo "*****pi1-1000*****" >> pi_runs.txt
./pi1 --terms 10000 >>  pi_runs.txt

echo "*****pi1-100000*****" >> pi_runs.txt
./pi1 --terms 100000 >>  pi_runs.txt

echo "*****pi1-1000000*****" >> pi_runs.txt
./pi1 --terms 1000000 >>  pi_runs.txt

echo "*****pi1-10000000*****" >> pi_runs.txt
./pi1 --terms 10000000 >>  pi_runs.txt

echo "*****pi1-100000000*****" >> pi_runs.txt
./pi1 --terms 100000000 >>  pi_runs.txt

echo "*****pi2-1000-1*****" >> pi_runs.txt
./pi2 --terms 10000 --threads 1 >>  pi_runs.txt

echo "*****pi2-100000-1*****" >> pi_runs.txt
./pi2 --terms 100000 --threads 1 >>  pi_runs.txt

echo "*****pi2-1000000-1*****" >> pi_runs.txt
./pi2 --terms 1000000 --threads 1 >>  pi_runs.txt

echo "*****pi2-10000000-1*****" >> pi_runs.txt
./pi2 --terms 10000000 --threads 1 >>  pi_runs.txt

echo "*****pi2-100000000-1*****" >> pi_runs.txt
./pi2 --terms 100000000 --threads 1 >>  pi_runs.txt

echo "*****pi2-1000-2*****" >> pi_runs.txt
./pi2 --terms 10000 --threads 2 >>  pi_runs.txt

echo "*****pi2-100000-2*****" >> pi_runs.txt
./pi2 --terms 100000 --threads 2 >>  pi_runs.txt

echo "*****pi2-1000000-2*****" >> pi_runs.txt
./pi2 --terms 1000000 --threads 2 >>  pi_runs.txt

echo "*****pi2-10000000-2*****" >> pi_runs.txt
./pi2 --terms 10000000 --threads 2 >>  pi_runs.txt

echo "*****pi2-100000000-2*****" >> pi_runs.txt
./pi2 --terms 100000000 --threads 2 >>  pi_runs.txt

echo "*****pi2-1000-4*****" >> pi_runs.txt
./pi2 --terms 10000 --threads 4 >>  pi_runs.txt

echo "*****pi2-100000-4*****" >> pi_runs.txt
./pi2 --terms 100000 --threads 4 >>  pi_runs.txt

echo "*****pi2-1000000-4*****" >> pi_runs.txt
./pi2 --terms 1000000 --threads 4 >>  pi_runs.txt

echo "*****pi2-10000000-4*****" >> pi_runs.txt
./pi2 --terms 10000000 --threads 4 >>  pi_runs.txt

echo "*****pi2-100000000-4*****" >> pi_runs.txt
./pi2 --terms 100000000 --threads 4 >>  pi_runs.txt

echo "*****pi2-1000-8*****" >> pi_runs.txt
./pi2 --terms 10000 --threads 8 >>  pi_runs.txt

echo "*****pi2-100000-8*****" >> pi_runs.txt
./pi2 --terms 100000 --threads 8 >>  pi_runs.txt

echo "*****pi2-1000000-8*****" >> pi_runs.txt
./pi2 --terms 1000000 --threads 8 >>  pi_runs.txt

echo "*****pi2-10000000-8*****" >> pi_runs.txt
./pi2 --terms 10000000 --threads 8 >>  pi_runs.txt

echo "*****pi2-100000000-8*****" >> pi_runs.txt
./pi2 --terms 100000000 --threads 8 >>  pi_runs.txt

echo "*****pi2-1000-16*****" >> pi_runs.txt
./pi2 --terms 10000 --threads 16 >>  pi_runs.txt

echo "*****pi2-100000-16*****" >> pi_runs.txt
./pi2 --terms 100000 --threads 16 >>  pi_runs.txt

echo "*****pi2-1000000-16*****" >> pi_runs.txt
./pi2 --terms 1000000 --threads 16 >>  pi_runs.txt

echo "*****pi2-10000000-16*****" >> pi_runs.txt
./pi2 --terms 10000000 --threads 16 >>  pi_runs.txt

echo "*****pi2-100000000-16*****" >> pi_runs.txt
./pi2 --terms 100000000 --threads 16 >>  pi_runs.txt

echo "*****pi3-1000-1*****" >> pi_runs.txt
./pi3 --terms 10000 --threads 1 >>  pi_runs.txt

echo "*****pi3-100000-1*****" >> pi_runs.txt
./pi3 --terms 100000 --threads 1 >>  pi_runs.txt

echo "*****pi3-1000000-1*****" >> pi_runs.txt
./pi3 --terms 1000000 --threads 1 >>  pi_runs.txt

echo "*****pi3-10000000-1*****" >> pi_runs.txt
./pi3 --terms 10000000 --threads 1 >>  pi_runs.txt

echo "*****pi3-100000000-1*****" >> pi_runs.txt
./pi3 --terms 100000000 --threads 1 >>  pi_runs.txt

echo "*****pi3-1000-2*****" >> pi_runs.txt
./pi3 --terms 10000 --threads 2 >>  pi_runs.txt

echo "*****pi3-100000-2*****" >> pi_runs.txt
./pi3 --terms 100000 --threads 2 >>  pi_runs.txt

echo "*****pi3-1000000-2*****" >> pi_runs.txt
./pi3 --terms 1000000 --threads 2 >>  pi_runs.txt

echo "*****pi3-10000000-2*****" >> pi_runs.txt
./pi3 --terms 10000000 --threads 2 >>  pi_runs.txt

echo "*****pi3-100000000-2*****" >> pi_runs.txt
./pi3 --terms 100000000 --threads 2 >>  pi_runs.txt

echo "*****pi3-1000-4*****" >> pi_runs.txt
./pi3 --terms 10000 --threads 4 >>  pi_runs.txt

echo "*****pi3-100000-4*****" >> pi_runs.txt
./pi3 --terms 100000 --threads 4 >>  pi_runs.txt

echo "*****pi3-1000000-4*****" >> pi_runs.txt
./pi3 --terms 1000000 --threads 4 >>  pi_runs.txt

echo "*****pi3-10000000-4*****" >> pi_runs.txt
./pi3 --terms 10000000 --threads 4 >>  pi_runs.txt

echo "*****pi3-100000000-4*****" >> pi_runs.txt
./pi3 --terms 100000000 --threads 4 >>  pi_runs.txt

echo "*****pi3-1000-8*****" >> pi_runs.txt
./pi3 --terms 10000 --threads 8 >>  pi_runs.txt

echo "*****pi3-100000-8*****" >> pi_runs.txt
./pi3 --terms 100000 --threads 8 >>  pi_runs.txt

echo "*****pi3-1000000-8*****" >> pi_runs.txt
./pi3 --terms 1000000 --threads 8 >>  pi_runs.txt

echo "*****pi3-10000000-8*****" >> pi_runs.txt
./pi3 --terms 10000000 --threads 8 >>  pi_runs.txt

echo "*****pi3-100000000-8*****" >> pi_runs.txt
./pi3 --terms 100000000 --threads 8 >>  pi_runs.txt

echo "*****pi3-1000-16*****" >> pi_runs.txt
./pi3 --terms 10000 --threads 16 >>  pi_runs.txt

echo "*****pi3-100000-16*****" >> pi_runs.txt
./pi3 --terms 100000 --threads 16 >>  pi_runs.txt

echo "*****pi3-1000000-16*****" >> pi_runs.txt
./pi3 --terms 1000000 --threads 16 >>  pi_runs.txt

echo "*****pi3-10000000-16*****" >> pi_runs.txt
./pi3 --terms 10000000 --threads 16 >>  pi_runs.txt

echo "*****pi3-100000000-16*****" >> pi_runs.txt
./pi3 --terms 100000000 --threads 16 >>  pi_runs.txt

echo "*****pi4-1000-1*****" >> pi_runs.txt
./pi4 --terms 10000 --threads 1 >>  pi_runs.txt

echo "*****pi4-100000-1*****" >> pi_runs.txt
./pi4 --terms 100000 --threads 1 >>  pi_runs.txt

echo "*****pi4-1000000-1*****" >> pi_runs.txt
./pi4 --terms 1000000 --threads 1 >>  pi_runs.txt

echo "*****pi4-10000000-1*****" >> pi_runs.txt
./pi4 --terms 10000000 --threads 1 >>  pi_runs.txt

echo "*****pi4-100000000-1*****" >> pi_runs.txt
./pi4 --terms 100000000 --threads 1 >>  pi_runs.txt

echo "*****pi4-1000-2*****" >> pi_runs.txt
./pi4 --terms 10000 --threads 2 >>  pi_runs.txt

echo "*****pi4-100000-2*****" >> pi_runs.txt
./pi4 --terms 100000 --threads 2 >>  pi_runs.txt

echo "*****pi4-1000000-2*****" >> pi_runs.txt
./pi4 --terms 1000000 --threads 2 >>  pi_runs.txt

echo "*****pi4-10000000-2*****" >> pi_runs.txt
./pi4 --terms 10000000 --threads 2 >>  pi_runs.txt

echo "*****pi4-100000000-2*****" >> pi_runs.txt
./pi4 --terms 100000000 --threads 2 >>  pi_runs.txt

echo "*****pi4-1000-4*****" >> pi_runs.txt
./pi4 --terms 10000 --threads 4 >>  pi_runs.txt

echo "*****pi4-100000-4*****" >> pi_runs.txt
./pi4 --terms 100000 --threads 4 >>  pi_runs.txt

echo "*****pi4-1000000-4*****" >> pi_runs.txt
./pi4 --terms 1000000 --threads 4 >>  pi_runs.txt

echo "*****pi4-10000000-4*****" >> pi_runs.txt
./pi4 --terms 10000000 --threads 4 >>  pi_runs.txt

echo "*****pi4-100000000-4*****" >> pi_runs.txt
./pi4 --terms 100000000 --threads 4 >>  pi_runs.txt

echo "*****pi4-1000-8*****" >> pi_runs.txt
./pi4 --terms 10000 --threads 8 >>  pi_runs.txt

echo "*****pi4-100000-8*****" >> pi_runs.txt
./pi4 --terms 100000 --threads 8 >>  pi_runs.txt

echo "*****pi4-1000000-8*****" >> pi_runs.txt
./pi4 --terms 1000000 --threads 8 >>  pi_runs.txt

echo "*****pi4-10000000-8*****" >> pi_runs.txt
./pi4 --terms 10000000 --threads 8 >>  pi_runs.txt

echo "*****pi4-100000000-8*****" >> pi_runs.txt
./pi4 --terms 100000000 --threads 8 >>  pi_runs.txt

echo "*****pi4-1000-16*****" >> pi_runs.txt
./pi4 --terms 10000 --threads 16 >>  pi_runs.txt

echo "*****pi4-100000-16*****" >> pi_runs.txt
./pi4 --terms 100000 --threads 16 >>  pi_runs.txt

echo "*****pi4-1000000-16*****" >> pi_runs.txt
./pi4 --terms 1000000 --threads 16 >>  pi_runs.txt

echo "*****pi4-10000000-16*****" >> pi_runs.txt
./pi4 --terms 10000000 --threads 16 >>  pi_runs.txt

echo "*****pi4-100000000-16*****" >> pi_runs.txt
./pi4 --terms 100000000 --threads 16 >>  pi_runs.txt

echo "*****pi5-1000-1*****" >> pi_runs.txt
./pi5 --terms 10000 --threads 1 >>  pi_runs.txt

echo "*****pi5-100000-1*****" >> pi_runs.txt
./pi5 --terms 100000 --threads 1 >>  pi_runs.txt

echo "*****pi5-1000000-1*****" >> pi_runs.txt
./pi5 --terms 1000000 --threads 1 >>  pi_runs.txt

echo "*****pi5-10000000-1*****" >> pi_runs.txt
./pi5 --terms 10000000 --threads 1 >>  pi_runs.txt

echo "*****pi5-100000000-1*****" >> pi_runs.txt
./pi5 --terms 100000000 --threads 1 >>  pi_runs.txt

echo "*****pi5-1000-2*****" >> pi_runs.txt
./pi5 --terms 10000 --threads 2 >>  pi_runs.txt

echo "*****pi5-100000-2*****" >> pi_runs.txt
./pi5 --terms 100000 --threads 2 >>  pi_runs.txt

echo "*****pi5-1000000-2*****" >> pi_runs.txt
./pi5 --terms 1000000 --threads 2 >>  pi_runs.txt

echo "*****pi5-10000000-2*****" >> pi_runs.txt
./pi5 --terms 10000000 --threads 2 >>  pi_runs.txt

echo "*****pi5-100000000-2*****" >> pi_runs.txt
./pi5 --terms 100000000 --threads 2 >>  pi_runs.txt

echo "*****pi5-1000-4*****" >> pi_runs.txt
./pi5 --terms 10000 --threads 4 >>  pi_runs.txt

echo "*****pi5-100000-4*****" >> pi_runs.txt
./pi5 --terms 100000 --threads 4 >>  pi_runs.txt

echo "*****pi5-1000000-4*****" >> pi_runs.txt
./pi5 --terms 1000000 --threads 4 >>  pi_runs.txt

echo "*****pi5-10000000-4*****" >> pi_runs.txt
./pi5 --terms 10000000 --threads 4 >>  pi_runs.txt

echo "*****pi5-100000000-4*****" >> pi_runs.txt
./pi5 --terms 100000000 --threads 4 >>  pi_runs.txt

echo "*****pi5-1000-8*****" >> pi_runs.txt
./pi5 --terms 10000 --threads 8 >>  pi_runs.txt

echo "*****pi5-100000-8*****" >> pi_runs.txt
./pi5 --terms 100000 --threads 8 >>  pi_runs.txt

echo "*****pi5-1000000-8*****" >> pi_runs.txt
./pi5 --terms 1000000 --threads 8 >>  pi_runs.txt

echo "*****pi5-10000000-8*****" >> pi_runs.txt
./pi5 --terms 10000000 --threads 8 >>  pi_runs.txt

echo "*****pi5-100000000-8*****" >> pi_runs.txt
./pi5 --terms 100000000 --threads 8 >>  pi_runs.txt

echo "*****pi5-1000-16*****" >> pi_runs.txt
./pi5 --terms 10000 --threads 16 >>  pi_runs.txt

echo "*****pi5-100000-16*****" >> pi_runs.txt
./pi5 --terms 100000 --threads 16 >>  pi_runs.txt

echo "*****pi5-1000000-16*****" >> pi_runs.txt
./pi5 --terms 1000000 --threads 16 >>  pi_runs.txt

echo "*****pi5-10000000-16*****" >> pi_runs.txt
./pi5 --terms 10000000 --threads 16 >>  pi_runs.txt

echo "*****pi5-100000000-16*****" >> pi_runs.txt
./pi5 --terms 100000000 --threads 16 >>  pi_runs.txt
