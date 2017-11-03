library(muscle)
library(Biostrings)

uma=readDNAStringSet("~/Downloads/AML_001_run1_combined_last38a_SV+_r100.fasta2", format="fasta")
aln <- muscle(uma)

