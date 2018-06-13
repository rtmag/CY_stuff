# GT
rm groundtruth/data/*bed
perl -pe 's/chr/hs/g' simulation/groundtruth_sim1/sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> groundtruth/data/deletions.bed
perl -pe 's/chr/hs/g' simulation/groundtruth_sim1/sim1_insertions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> groundtruth/data/insertions.bed
perl -pe 's/chr/hs/g' simulation/groundtruth_sim1/sim1_inversions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> groundtruth/data/inversions.bed
perl -pe 's/chr/hs/g' simulation/groundtruth_sim1/sim1_tandemDuplications.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> groundtruth/data/tandemDuplications.bed
perl -pe 's/chr/hs/g' simulation/groundtruth_sim1/sim1_viralinsertions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> groundtruth/data/viralinsertions.bed
##########################################################################################################################
# HS
rm hs/data/*bed
perl -pe 's/chr/hs/g' simulation/hybridseek_sim1/hs_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> hs/data/deletions.bed
perl -pe 's/chr/hs/g' simulation/hybridseek_sim1/hs_sim1_insertions_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
|cut -f1-6,8 > hs/data/insertions.bed
perl -pe 's/chr/hs/g' simulation/hybridseek_sim1/hs_sim1_inversions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> hs/data/inversions.bed
perl -pe 's/chr/hs/g' simulation/hybridseek_sim1/hs_sim1_novelinsertions_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> hs/data/viralinsertions.bed
perl -pe 's/chr/hs/g' simulation/hybridseek_sim1/hs_sim1_tandemDuplication_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> hs/data/tandemDuplications.bed
perl -pe 's/chr/hs/g' simulation/hybridseek_sim1/hs_sim1_translocation_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
|cut -f1-6,8 >> hs/data/insertions.bed
##########################################################################################################################
#novobreak
rm novobreak/data/*bed
perl -pe 's/chr/hs/g' simulation/novobreak_sim1/novo_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> novobreak/data/deletions.bed
perl -pe 's/chr/hs/g' simulation/novobreak_sim1/novo_sim1_translocation_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
|cut -f1-6,8 > novobreak/data/insertions.bed
perl -pe 's/chr/hs/g' simulation/novobreak_sim1/novo_sim1_inversions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> novobreak/data/inversions.bed
perl -pe 's/chr/hs/g' simulation/novobreak_sim1/novo_sim1_tandemDuplication_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> novobreak/data/tandemDuplications.bed
echo '' > novobreak/data/viralinsertions.bed
##########################################################################################################################
#nanosv
rm nanosv/data/*bed
perl -pe 's/chr/hs/g' simulation/nanoSV_sim1/nanosv_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> nanosv/data/deletions.bed
perl -pe 's/chr/hs/g' simulation/nanoSV_sim1/nanosv_sim1_breakends.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
|cut -f1-6,8 > nanosv/data/insertions.bed
echo '' > nanosv/data/inversions.bed
perl -pe 's/chr/hs/g' simulation/nanoSV_sim1/nanosv_sim1_duplication_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> nanosv/data/tandemDuplications.bed
perl -pe 's/chr/hs/g' simulation/nanoSV_sim1/nanosv_sim1_insertion_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> nanosv/data/viralinsertions.bed
##########################################################################################################################
#delly
rm delly/data/*bed
perl -pe 's/chr/hs/g' simulation/delly_sim1/dell_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> delly/data/deletions.bed
perl -pe 's/chr/hs/g' simulation/delly_sim1/dell_sim1_breakends.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
|cut -f1-6,8 > delly/data/insertions.bed
perl -pe 's/chr/hs/g' simulation/delly_sim1/dell_sim1_inversions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> delly/data/inversions.bed
perl -pe 's/chr/hs/g' simulation/delly_sim1/dell_sim1_insertion_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> delly/data/viralinsertions.bed
perl -pe 's/chr/hs/g' simulation/delly_sim1/dell_sim1_duplication_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> delly/data/tandemDuplications.bed
##########################################################################################################################
#picky
rm picky/data/*bed
perl -pe 's/chr/hs/g' simulation/picky_sim1/pick_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> picky/data/deletions.bed
perl -pe 's/chr/hs/g' simulation/picky_sim1/pick_sim1_breakends.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
|cut -f1-6,8 > picky/data/insertions.bed
perl -pe 's/chr/hs/g' simulation/picky_sim1/pick_sim1_inversions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> picky/data/inversions.bed
perl -pe 's/chr/hs/g' simulation/picky_sim1/pick_sim1_insertion_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> picky/data/viralinsertions.bed
perl -pe 's/chr/hs/g' simulation/picky_sim1/pick_sim1_duplication_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> picky/data/tandemDuplications.bed
##########################################################################################################################
#sniff
rm sniff/data/*bed
perl -pe 's/chr/hs/g' simulation/sniffles_sim1/sniff_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> sniff/data/deletions.bed
perl -pe 's/chr/hs/g' simulation/sniffles_sim1/sniff_sim1_translocation_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
|cut -f1-6,8 > sniff/data/insertions.bed
perl -pe 's/chr/hs/g' simulation/sniffles_sim1/sniff_sim1_inversions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> sniff/data/inversions.bed
perl -pe 's/chr/hs/g' simulation/sniffles_sim1/sniff_sim1_insertion_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> sniff/data/viralinsertions.bed
perl -pe 's/chr/hs/g' simulation/sniffles_sim1/sniff_sim1_duplication_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> sniff/data/tandemDuplications.bed
##########################################################################################################################
cd delly
circos -conf etc/circos.conf
cd ..
cd groundtruth
circos -conf etc/circos.conf
cd ..
cd hs
circos -conf etc/circos.conf
cd ..
cd nanosv
circos -conf etc/circos.conf
cd ..
cd novobreak
circos -conf etc/circos.conf
cd ..
cd picky
circos -conf etc/circos.conf
cd ..
cd sniff
circos -conf etc/circos.conf
cd ..
#############################################################################
