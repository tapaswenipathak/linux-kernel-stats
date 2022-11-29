#!/bin/bash

SRCDIR=~/linux-stable/linux-stable
cd $SRCDIR

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#all_versions[@]}  

for ((i=0; i<=$n; i++)); do
    git checkout -fq ${all_versions[$i]}
    if [[ $? -eq 0 ]]; then
        # echo "${all_versions[$i]}"
        # paste <(echo "${all_versions[$(($i-1))]}..${all_versions[$i]}") <(echo "$number_of_patches") | column -s $'\t' -t
        paste <(echo "${all_versions[$i]}") <(find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}') | column -s $'\t' -t
    else
        continue
    fi
done