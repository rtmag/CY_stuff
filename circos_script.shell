###################################################################################################################
# New Directory
rm -fr circos_Simulations/
mkdir circos_Simulations/
###################################################################################################################
# Delly
mkdir circos_Simulations/delly_sim1
mkdir circos_Simulations/delly_sim1/data
cp circos_backbone/data/karyotype.txt circos_Simulations/delly_sim1/data/
cp circos_backbone/*conf circos_Simulations/delly_sim1/
#
more Simulations/delly_sim1/dell_sim1_breakends.bed|cut -f1-6|perl -pe 's/chr/hs/g' \
> circos_Simulations/delly_sim1/data/insertions.bed
more Simulations/delly_sim1/dell_sim1_deletions.bed|cut -f1-3| \
perl -pe 's/chr/hs/g'|perl -pe 's/\n/\t10\n/g' > circos_Simulations/delly_sim1/data/deletions.bed
more Simulations/delly_sim1/dell_sim1_duplication_breakpoints.bed|cut -f1-3| \
perl -pe 's/chr/hs/g'|perl -pe 's/\n/\t10\n/g' > circos_Simulations/delly_sim1/data/tandemDuplications.bed
more Simulations/delly_sim1/dell_sim1_insertion_breakpoints.bed|cut -f1-3| \
perl -pe 's/chr/hs/g'|perl -pe 's/\n/\t10\n/g' > circos_Simulations/delly_sim1/data/viralinsertions.bed
more Simulations/delly_sim1/dell_sim1_inversions.bed|cut -f1-3| \
perl -pe 's/chr/hs/g'|perl -pe 's/\n/\t10\n/g' > circos_Simulations/delly_sim1/data/inversions.bed
#
circos -conf circos_Simulations/delly_sim1/circos.conf -outputfile circos_Simulations/delly_sim1/delly_sim1
###################################################################################################################
# Ground TRUTH
Simulations/groundtruth_sim1/sim1_deletions.bed
Simulations/groundtruth_sim1/sim1_insertions.bed
Simulations/groundtruth_sim1/sim1_inversions.bed
Simulations/groundtruth_sim1/sim1_tandemDuplications.bed
Simulations/groundtruth_sim1/sim1_viralinsertions.bed


###################################################################################################################
Simulations/hybridseek_sim1/hs_sim1_deletions.bed
Simulations/hybridseek_sim1/hs_sim1_insertions_breakpoints.bed
Simulations/hybridseek_sim1/hs_sim1_inversions.bed
Simulations/hybridseek_sim1/hs_sim1_novelinsertions_breakpoints.bed
Simulations/hybridseek_sim1/hs_sim1_tandemDuplication_breakpoints.bed
Simulations/hybridseek_sim1/hs_sim1_translocation_breakpoints.bed

#
###################################################################################################################
Simulations/nanoSV_sim1/nanosv_sim1_breakends.bed
Simulations/nanoSV_sim1/nanosv_sim1_deletions.bed
Simulations/nanoSV_sim1/nanosv_sim1_duplication_breakpoints.bed
Simulations/nanoSV_sim1/nanosv_sim1_insertion_breakpoints.bed

#
###################################################################################################################
Simulations/novobreak_sim1/novo_sim1_deletions.bed
Simulations/novobreak_sim1/novo_sim1_inversions.bed
Simulations/novobreak_sim1/novo_sim1_tandemDuplication_breakpoints.bed
Simulations/novobreak_sim1/novo_sim1_translocation_breakpoints.bed

#
###################################################################################################################
Simulations/picky_sim1/pick_sim1_breakends.bed
Simulations/picky_sim1/pick_sim1_deletions.bed
Simulations/picky_sim1/pick_sim1_duplication_breakpoints.bed
Simulations/picky_sim1/pick_sim1_insertion_breakpoints.bed
Simulations/picky_sim1/pick_sim1_inversions.bed

#

Simulations/sniffles_sim1/sniff_sim1_del_or_inv.bed
Simulations/sniffles_sim1/sniff_sim1_deletions.bed
Simulations/sniffles_sim1/sniff_sim1_dup_or_ins.bed
Simulations/sniffles_sim1/sniff_sim1_duplication_breakpoints.bed
Simulations/sniffles_sim1/sniff_sim1_insertion_breakpoints.bed
Simulations/sniffles_sim1/sniff_sim1_inv_or_dup.bed
Simulations/sniffles_sim1/sniff_sim1_inversions.bed
Simulations/sniffles_sim1/sniff_sim1_translocation_breakpoints.bed
