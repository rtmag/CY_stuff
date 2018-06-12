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
#

