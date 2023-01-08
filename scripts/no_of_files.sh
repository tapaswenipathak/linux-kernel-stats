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
    paste <(echo "${all_versions[$i]}") <(find . -type f -not -regex '\./\.git/.*' | wc -l)| column -s $'\t' -t
    else
        continue
    fi
done