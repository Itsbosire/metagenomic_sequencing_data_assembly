#!/bin/bash

# Paths
input_dir="/home/bosire/Desktop/Projectx/metagenomics/Assembly"
out_dir="/home/bosire/Desktop/Projectx/metagenomics/QC/Busco"
download_dir="/home/bosire/Desktop/Projectx/metagenomics/QC/busco_downloads"

# Make output and download dirs
mkdir -p "$out_dir" "$download_dir"

# Run BUSCO
busco \
  -i "$input_dir/final_contigs.fasta" \
  -m genome \
  -l eukaryota_odb12 \
  -o busco_results \
  --out_path "$out_dir" \
  --cpu 2 \
  --plot 

