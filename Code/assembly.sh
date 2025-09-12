#!/bin/bash

# A script to assemble metagenomic sequences
input_dir="/home/bosire/Desktop/Projectx/metagenomics/Data/raw"

output_dir="/home/bosire/Desktop/Projectx/metagenomics/Assembly"

# Make Output dir if does not exist
mkdir -p "$output_dir"

# Specifying reads
read1="$input_dir/SRR31985910_1.fastq.gz"
read2="$input_dir/SRR31985910_2.fastq.gz"

# Running megahit to assemble sequences

echo "Starting analysis"
spades.py --meta --only-assembler -1 "$read1" -2 "$read2" -t 2 -m 3  -k 21,33,45  --phred-offset 33 -o "$output_dir"

echo " Metagenomic assembly using metaspades is finished."
