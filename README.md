# Metagenomic Assembly of Human Gut Microbiome

## Overview

This project focuses on the assembly and quality assessment of **human gut microbiome metagenomic sequencing data**. The workflow included raw read quality control, assembly, and evaluation of the resulting contigs using state-of-the-art bioinformatics tools. The assembled data provides a foundation for downstream **taxonomic profiling** and **functional annotation**.

---

## Tools Used

- [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) for initial quality assessment of raw reads.
- [SPAdes (MetaSPAdes mode)](https://github.com/ablab/spades) for metagenomic assembly.
- [MetaQUAST](https://quast.sourceforge.net/) for assembly quality evaluation.
- (Optional) [BUSCO](https://busco.ezlab.org/) for assessing genome completeness.

## Workflow structure

- Quality Control (QC) of raw reads using FastQC.
- Assembly of high-quality reads into contigs using MetaSPAdes.
- Quality assessment of assemblies using MetaQUAST (and optionally BUSCO).

```bash

Projectx/
│── Data/
|── Code   /                # Scripts used for analysis
    ── data_download.sh   # Script to download raw sequencing data
    ── fastqc.sh      # Script to run FastQC
    ── metaspades.sh  # Script to run MetaSPAdes assembly
    ── quast.sh      # Script to run MetaQUAST
    ── busco.sh      # (Optional) Script to run BUSCO
│── QC/                  # FastQC outputs
│── Assembly/            # MetaSPAdes outputs
│── QC/Quast/            # MetaQUAST reports
│── QC/Busco/            # (Optional) BUSCO completeness assessment
│── Report.md            # Full project report
│── Project_overview.md  # Short project overview
│── README.md            # Project documentation
```
