# metagenomic_resistome
This repository contains all the scripts used for metagenomic processing and resistome analysis. Four different pipelines were compared for resistome characterization. First, metagenome sequences from cattle feces were analyzed with AmrPlusPlus for sequence processing and ARG annotations with the MEGARES 2.0 database. Then, host-removed metagenomes were used for DNA assembly and further annotations with DeepARG, CARD, and HMD-ARG which are protein databases to identify antimicrobial determinants. Finally, ARG-host identification was carried out by identifying taxa associated with ARG-carrying contigs and co-occurrence networks between bacterial taxa and ARGs. Statistical analyses were used to identify assembler performance and resistome composition.

Here you will find two directories: "data" and "scripts". The 'data' folder contain nextera adapter fasta file (needed in the AmrPlusPlus workflow), and resistome databases (fasta and annotations in csv format). The scripts' directory has codes organized by step. 

![image](https://github.com/karla-vasco/metagenomic_resistome/blob/main/metagenomic_approac_resistome.png)


1. amrplusplus = metagenomic processing with AmrPlusPlus v2.0 and read-based metagenome annotations with MEGARES 2.0 and RGI.
2. assembly = metagenome assembly with MEGAHIT and MetaSPADES. Assembly evaluation with metaQUAST.
3. deeparg = resistome annotations of assembled contigs with deepARG.
4. protein_translation = gene prediction and translation of contigs with Prodigal. Outputs consist on amino acid fasta files.
5. card = resistome annotations of translated contigs with the CARD database.
6. hmdarg = resistome annotations of translated contigs with the HMD-ARG database.
7. acc = antimicrobial-resistant-gene-carrying contig (ACC) analysis with BLASTP. Contigs carrying ARG to the drug-class beta-lactam were analyzed. ACCs identified with either DeepARG or HMD-ARG were extracted with seqtk and annotated with BLASTP.
8. seq_count = bacteria sequences count with Kraken2. 

## References
1.	Nurk S, Meleshko D, Korobeynikov A, Pevzner PA. metaSPAdes: a new versatile metagenomic assembler. Genome Res. 2017;27:824–34.
2.	Li D, Liu C-M, Luo R, Sadakane K, Lam T-W. MEGAHIT: an ultra-fast single-node solution for large and complex metagenomics assembly via succinct de Bruijn graph. Bioinformatics. 2015;31:1674–6.
3.	Alcock BP, Raphenya AR, Lau TTY, Tsang KK, Bouchard M, Edalatmand A, et al. CARD 2020: antibiotic resistome surveillance with the comprehensive antibiotic resistance database. Nucleic Acids Res. 2020;48:D517–25.
4.	Arango-Argoty G, Garner E, Pruden A, Heath LS, Vikesland P, Zhang L. DeepARG: a deep learning approach for predicting antibiotic resistance genes from metagenomic data. Microbiome. 2018;6:23.
5.	Li Y, Xu Z, Han W, Cao H, Umarov R, Yan A, et al. HMD-ARG: hierarchical multi-task deep learning for annotating antibiotic resistance genes. Microbiome. 2021;9:40.
6.	Doster E, Lakin SM, Dean CJ, Wolfe C, Young JG, Boucher C, et al. MEGARes 2.0: a database for classification of antimicrobial drug, biocide and metal resistance determinants in metagenomic sequence data. Nucleic Acids Res. 2020;48:D561–9.
7.	Rosen BD, Bickhart DM, Schnabel RD, Koren S, Elsik CG, Tseng E, et al. De novo assembly of the cattle reference genome with single-molecule sequencing. GigaScience. 2020;9. doi:10.1093/gigascience/giaa021.
8.	Bolger AM, Lohse M, Usadel B. Trimmomatic: a flexible trimmer for Illumina sequence data. Bioinformatics. 2014;30:2114–20.
9.	Vasimuddin M, Misra S, Li H, Aluru S. Efficient Architecture-Aware Acceleration of BWA-MEM for Multicore Systems. In: 2019 IEEE International Parallel and Distributed Processing Symposium (IPDPS). 2019. p. 314–24.
10.	Sequence Alignment/Map format and SAMtools | Bioinformatics | Oxford Academic. https://academic.oup.com/bioinformatics/article/25/16/2078/204688?login=true. Accessed 18 Feb 2021.
11.	Babraham Bioinformatics - FastQC A Quality Control tool for High Throughput Sequence Data. https://www.bioinformatics.babraham.ac.uk/projects/fastqc/. Accessed 18 Feb 2021.
12.	Ewels P, Magnusson M, Lundin S, Käller M. MultiQC: summarize analysis results for multiple tools and samples in a single report. Bioinformatics. 2016;32:3047–8.
13.	Mikheenko A, Saveliev V, Gurevich A. MetaQUAST: evaluation of metagenome assemblies. Bioinformatics. 2016;32:1088–90.
14.	Hyatt D, Chen G-L, LoCascio PF, Land ML, Larimer FW, Hauser LJ. Prodigal: prokaryotic gene recognition and translation initiation site identification. BMC Bioinformatics. 2010;11:119.
15.	Wood DE, Lu J, Langmead B. Improved metagenomic analysis with Kraken 2. Genome Biol. 2019;20:257.
16.	Altschul SF, Gish W, Miller W, Myers EW, Lipman DJ. Basic local alignment search tool. J Mol Biol. 1990;215:403–10.
17.	Wickham H, Averick M, Bryan J, Chang W, McGowan LD, François R, et al. Welcome to the Tidyverse. J Open Source Softw. 2019;4:1686.
18.	Jr FEH, others  with contributions from CD and many. Hmisc: Harrell Miscellaneous. 2021. https://CRAN.R-project.org/package=Hmisc. Accessed 20 Apr 2021.
19.	Bastian M, Heymann S, Jacomy M. Gephi: An Open Source Software for Exploring and Manipulating Networks. Proc Int AAAI Conf Web Soc Media. 2009;3. https://ojs.aaai.org/index.php/ICWSM/article/view/13937. Accessed 19 Feb 2021.

