dell_sim1_deletions.bed
hs_sim1_deletions.bed
nanosv_sim1_deletions.bed
novo_sim1_deletions.bed

pick_sim1_deletions.bed
sim1_deletions.bed
sniff_sim1_deletions.bed


TT=blue
TF=grey
FN=black


perl -pe 's/chr/hs/g' deletions/data/deletions_raw/dell_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tsv=$1\tlabel=$2\n/g' \
> deletions/data/deletions/dell_sim1_deletions.bed

perl -pe 's/chr/hs/g' deletions/data/deletions_raw/hs_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tsv=$1\tlabel=$2\n/g' \
> deletions/data/deletions/hs_sim1_deletions.bed

perl -pe 's/chr/hs/g' deletions/data/deletions_raw/nanosv_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tsv=$1\tlabel=$2\n/g' \
> deletions/data/deletions/nanosv_sim1_deletions.bed

perl -pe 's/chr/hs/g' deletions/data/deletions_raw/novo_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tsv=$1\tlabel=$2\n/g' \
> deletions/data/deletions/novo_sim1_deletions.bed

perl -pe 's/chr/hs/g' deletions/data/deletions_raw/pick_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tsv=$1\tlabel=$2\n/g' \
> deletions/data/deletions/pick_sim1_deletions.bed

perl -pe 's/chr/hs/g' deletions/data/deletions_raw/sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tsv=$1\tlabel=$2\n/g' \
> deletions/data/deletions/sim1_deletions.bed

perl -pe 's/chr/hs/g' deletions/data/deletions_raw/sniff_sim1_deletions.bed|perl -pe 's/\t(\w+)\t(\w+)\n/\tsv=$1\tlabel=$2\n/g' \
> deletions/data/deletions/sniff_sim1_deletions.bed
###################################################################################################################################

