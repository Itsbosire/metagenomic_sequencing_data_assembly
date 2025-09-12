# Metagenomic Sequencing Data Assembly Report

## Introduction

The human gut microbiome is a highly diverse microbial ecosystem that plays essential roles in host physiology, immunity, and metabolism. Metagenomic sequencing provides a culture-independent approach to studying this community by directly sequencing DNA from environmental samples. Assembly of metagenomic reads into longer contiguous sequences (contigs) is an important step for downstream taxonomic classification and functional analysis.  

The aim of this project was to assemble human gut microbiome sequencing data and assess the quality of the resulting assemblies using  bioinformatics tools.

---

## Materials and Methods

### Data Acquisition

- Raw paired-end sequencing reads of the **human gut microbiome** were downloaded from a public repository (NCBI SRA).  
- Files were obtained in FASTQ format.  
- Downloaded files can be found [NCBI](https://www.ncbi.nlm.nih.gov/sra/SRX27340978[accn])  

### Quality Control

- Tool: **FastQC**  
- Purpose: To evaluate read quality, GC content, sequence length distribution, and adapter contamination.  
- Outcome: Reads were of sufficient quality for downstream assembly.  

### Assembly

- Tool: **SPAdes (Metagenome (--meta) mode)**  
- Parameters: K-mer sizes of 21, 33, 45 were tested.  
- Purpose: To assemble high-quality reads into contigs suitable for metagenomic analysis.  

### Assembly Quality Assessment

- Tool: **MetaQUAST (v5.2.0)**  
- Purpose: To evaluate assembly statistics with reference genomes representative of gut microbiota.  
- Metrics assessed included number of contigs, assembly length, N50, GC content, genome fraction, misassemblies, mismatches, and indels.  

---

## Results

### Assembly Statistics (MetaQUAST)

- **Number of contigs:** 50,275  
- **Total assembly length:** 107,307,914 bp (~107 Mb)  
- **Largest contig:** 468,914 bp  
- **Total length (≥ 1,000 bp):** 86,572,462 bp  
- **Total length (≥ 10,000 bp):** 43,062,252 bp  
- **Total length (≥ 50,000 bp):** 20,688,987 bp  
- **Genome fraction covered:** 47.86%  
- **Duplication ratio:** 1.061  
- **Largest alignment:** 100,819 bp  
- **Total aligned length:** 21,264,356 bp  
- **Misassemblies:** 654 (6.2 Mb affected)  
- **Mismatch rate:** 1,649.19 per 100 kbp  
- **Indel rate:** 84.71 per 100 kbp  

### Interpretation

The assembly produced over **50,000 contigs** with a cumulative size of approximately **107 Mb**. The **largest contig (~469 kb)** indicates that certain genomes within the community were reconstructed relatively well. The **genome fraction (~48%)** shows that less than half of the combined reference set was captured, reflecting the inherent difficulty of assembling complex microbial communities with variable coverage.  

The **duplication ratio (~1.06)** suggests low redundancy, but the **high number of misassemblies (654)** and **mismatch rate (~1,649 per 100 kbp)** highlight assembly challenges associated with strain-level diversity and repetitive sequences. Overall, the assembly provides a valuable yet fragmented resource for downstream analyses such as taxonomic profiling and functional gene annotation.

---

## Discussion

Metagenomic assembly of complex samples like the human gut microbiome is inherently challenging due to high microbial diversity, uneven coverage, and the presence of closely related strains. While SPAdes in metagenomic mode successfully generated a large set of contigs, the assembly remains fragmented with moderate genome coverage.  

Despite these limitations, the dataset is suitable for:

- **Taxonomic classification** of microbial species.  
- **Functional annotation** of predicted genes.  
- **Comparative metagenomics** across different host conditions.  

Further improvements could be achieved by incorporating longer reads (e.g., Nanopore or PacBio), hybrid assembly approaches, or binning strategies to reconstruct metagenome-assembled genomes (MAGs).  

---

## Conclusion

This project successfully assembled and assessed human gut microbiome sequencing data. The assembly generated ~50,000 contigs with a total size of 107 Mb, covering nearly half of the combined reference genomes. While the assembly is fragmented and contains misassemblies, it provides a strong basis for downstream microbiome analysis.  

---

## Future Work

- Apply **binning tools** (e.g., MetaBAT2, MaxBin) to recover draft genomes.  
- Perform **taxonomic profiling** (e.g., Kraken2, MetaPhlAn).  
- Conduct **functional annotation** (e.g., Prokka, EggNOG-mapper).  
- Compare with other gut microbiome datasets to explore variation across health and disease states.  
