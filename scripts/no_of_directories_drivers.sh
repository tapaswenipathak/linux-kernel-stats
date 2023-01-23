#!/bin/bash

SRCDIR=~/linux-stable
cd $SRCDIR/drivers

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#all_versions[@]}  


for ((i=0; i<=$n; i++)); do
    git checkout -fq ${all_versions[$i]}
    if [[ $? -eq 0 ]]; then
        echo ""
        echo ${all_versions[$i]}
        ls -ld */ | wc -l
    else
        continue
    fi   
done 
