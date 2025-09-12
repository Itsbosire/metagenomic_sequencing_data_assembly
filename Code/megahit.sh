#!/bin/bash
input_dir="/home/bosire/Desktop/Projectx/metagenomics/Data/raw"

out_dir="/home/bosire/Desktop/Projectx/metagenomics/megahit_results"

#make output dir if does not exist

mkdir -p "$out_dir"

# Specifying reads

read1="$input_dir/SRR31985910_1.fastq.gz"
read2="$input_dr/SRR31985910_2.fastq.gz"

# Running megahit on the raw reads
megahit -1 "$read1" -2 "$read2" -t 2 --k-min 21 --k-max 55 --k-step 12 -o "$out_dir"


echo " Analysis completed"
