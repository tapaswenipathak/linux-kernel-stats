#!/bin/bash

SRCDIR=~/linux-stable/linux-stable
cd $SRCDIR

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#all_versions[@]}  

for ((i=2; i<=$n; i++)); do
    number_of_patches=$(git log --oneline ${all_versions[$(($i-1))]}..${all_versions[$i]}| wc -l)
    if [[ "$number_of_patches" -ne 0 ]]; then
        paste <(echo "${all_versions[$(($i-1))]}..${all_versions[$i]}") <(echo "$number_of_patches") | column -s $'\t' -t
    else 
        continue
    fi
done