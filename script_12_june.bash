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
