#!/bin/bash
# Specifying input directory
input_dir="/home/bosire/Desktop/Projectx/metagenomics/Data/raw"

output_dir="/home/bosire/Desktop/Projectx/metagenomics/QC"
# Make the output dir
mkdir -p "$output_dir"
# Running fastqc on the raw reads

read1="$input_dir/SRR31985910_1.fastq.gz"
read2="$input_dir/SRR31985910_2.fastq.gz"

echo "Running fastqc"

fastqc "$read1" "$read2" -o "$output_dir"


echo "Analysis completed"
