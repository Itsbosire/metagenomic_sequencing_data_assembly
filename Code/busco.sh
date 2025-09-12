# Specifying paths
input_dir="/home/bosire/Desktop/Projectx/metagenomics/Assembly"

out_dir="/home/bosire/Desktop/Projectx/metagenomics/QC/Busco"

# Make out_dir if does not exist
mkdir -p "$out_dir"

# Running Busco

busco -i "$input_dir/final_contigs.fast"\
      -m genome \
      -l eukaryota_odb12 \
      --cpu 2 \
     --plot \
     -o Busco
    --out_path "/home/bosire/Desktop/Projectx/metagenomics/QC/Busco"


