 # Karyotype generation
more hg38.chrom.sizes |grep -P -v "_|M"|sort -k1,1 -V -s|perl -pe "s/^/chr\t\-\ths\t/g"| \
perl -pe 's/hs\tchr(.+)\t/hs$1\t$1\t1\t/g'|awk -F"\t" '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$1$4}' > karyotype.txt

#
