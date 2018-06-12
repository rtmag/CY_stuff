perl -pe 's/chr/hs/g' deletions/data/deletions_raw/sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tlabel=$2\n/g' \
> deletions/data/deletions/sim1_deletions.bed
