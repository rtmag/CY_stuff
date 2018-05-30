 # Karyotype generation
more hg38.chrom.sizes |grep -P -v "_|M"|sort -k1,1 -V -s|perl -pe "s/^/chr\t\-\ths\t/g"| \
perl -pe 's/hs\tchr(.+)\t/hs$1\t$1\t1\t/g'|awk -F"\t" '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$1$4}' > karyotype.txt

# INSERTIONS
more *_insertions.bed |cut -f1-6|perl -pe 's/chr/hs/g' > insertions.bed

# DELETION
more *_deletions.bed |cut -f1-3|perl -pe 's/chr/hs/g'|perl -pe 's/\n/\t10\n/g' > deletions.bed

# Inversions
more *_inversions.bed |cut -f1-3|perl -pe 's/chr/hs/g'|perl -pe 's/\n/\t10\n/g' > inversions.bed

# TANDEM
more *_tandemDuplications.bed |cut -f1-3|perl -pe 's/chr/hs/g'|perl -pe 's/\n/\t10\n/g' > tandemDuplications.bed

# VIRAL
more *_viralinsertions.bed |cut -f1-3|perl -pe 's/chr/hs/g'|perl -pe 's/\n/\t10\n/g' > viralinsertions.bed

