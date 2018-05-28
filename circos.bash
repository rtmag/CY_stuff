 # Karyotype generation
more hg38.chrom.sizes |grep -P -v "_|M"|sort -k1,1 -V -s|awk -F"\t" '{print $1"\t"1"\t"$2}'| \
perl -pe "s/^/chr\t\-\ths\t/g"|perl -pe 's/hs\tchr(.+)\t/hs$1\tchr$1\t/g'| \
awk -F"\t" '{print $1"\t"$2"\t"$3"\t"4"\t"$5"\t"$6"\t"$7"\t"$5}' > karyotype.txt

#
