# Deletions

perl -pe 's/chr/hs/g' deletions/data/deletions_raw/dell_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> deletions/data/deletions/dell_sim1_deletions.bed

perl -pe 's/chr/hs/g' deletions/data/deletions_raw/hs_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> deletions/data/deletions/hs_sim1_deletions.bed

perl -pe 's/chr/hs/g' deletions/data/deletions_raw/nanosv_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> deletions/data/deletions/nanosv_sim1_deletions.bed

perl -pe 's/chr/hs/g' deletions/data/deletions_raw/novo_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> deletions/data/deletions/novo_sim1_deletions.bed

perl -pe 's/chr/hs/g' deletions/data/deletions_raw/pick_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> deletions/data/deletions/pick_sim1_deletions.bed

perl -pe 's/chr/hs/g' deletions/data/deletions_raw/sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> deletions/data/deletions/sim1_deletions.bed

perl -pe 's/chr/hs/g' deletions/data/deletions_raw/sniff_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> deletions/data/deletions/sniff_sim1_deletions.bed
###################################################################################################################################
# INV
## Sim
perl -pe 's/chr/hs/g' simulation/delly_sim1/dell_sim1_inversions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> inv/data/deletions/dell_sim1_deletions.bed

perl -pe 's/chr/hs/g' simulation/groundtruth_sim1/sim1_inversions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> inv/data/deletions/sim1_deletions.bed

perl -pe 's/chr/hs/g' simulation/hybridseek_sim1/hs_sim1_inversions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> inv/data/deletions/hs_sim1_deletions.bed

perl -pe 's/chr/hs/g' simulation/novobreak_sim1/novo_sim1_inversions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> inv/data/deletions/novo_sim1_deletions.bed

perl -pe 's/chr/hs/g' simulation/picky_sim1/pick_sim1_inversions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> inv/data/deletions/pick_sim1_deletions.bed

perl -pe 's/chr/hs/g' simulation/sniffles_sim1/sniff_sim1_inversions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> inv/data/deletions/sniff_sim1_deletions.bed

echo "" > inv/data/deletions/nanosv_sim1_deletions.bed
##################################################################################################################################
# DUP
perl -pe 's/chr/hs/g' simulation/delly_sim1/dell_sim1_duplication_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> dup/data/deletions/dell_sim1_deletions.bed

perl -pe 's/chr/hs/g' simulation/groundtruth_sim1/sim1_tandemDuplications.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> dup/data/deletions/sim1_deletions.bed

perl -pe 's/chr/hs/g' simulation/hybridseek_sim1/hs_sim1_tandemDuplication_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> dup/data/deletions/hs_sim1_deletions.bed

perl -pe 's/chr/hs/g' simulation/nanoSV_sim1/nanosv_sim1_duplication_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> dup/data/deletions/nanosv_sim1_deletions.bed

perl -pe 's/chr/hs/g' simulation/novobreak_sim1/novo_sim1_tandemDuplication_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> dup/data/deletions/novo_sim1_deletions.bed

perl -pe 's/chr/hs/g' simulation/picky_sim1/pick_sim1_duplication_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> dup/data/deletions/pick_sim1_deletions.bed

perl -pe 's/chr/hs/g' simulation/sniffles_sim1/sniff_sim1_duplication_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> dup/data/deletions/sniff_sim1_deletions.bed

##################################################################################################################################
# INS

perl -pe 's/chr/hs/g' simulation/delly_sim1/dell_sim1_insertion_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> ins/data/deletions/dell_sim1_deletions.bed

perl -pe 's/chr/hs/g' simulation/groundtruth_sim1/sim1_viralinsertions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> ins/data/deletions/sim1_deletions.bed

perl -pe 's/chr/hs/g' simulation/hybridseek_sim1/hs_sim1_novelinsertions_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> ins/data/deletions/hs_sim1_deletions.bed

perl -pe 's/chr/hs/g' simulation/nanoSV_sim1/nanosv_sim1_insertion_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> ins/data/deletions/nanosv_sim1_deletions.bed

echo "" > ins/data/deletions/novo_sim1_deletions.bed

perl -pe 's/chr/hs/g' simulation/picky_sim1/pick_sim1_insertion_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> ins/data/deletions/pick_sim1_deletions.bed

perl -pe 's/chr/hs/g' simulation/sniffles_sim1/sniff_sim1_insertion_breakpoints.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> ins/data/deletions/sniff_sim1_deletions.bed

