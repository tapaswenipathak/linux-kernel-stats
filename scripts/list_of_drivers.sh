#!/bin/bash

# list of all drivers for each version since 1991 to 2023
# Contributor: patelmadhu06@gmail.com

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
        for d in $(find ~/linux-stable/drivers/ -maxdepth 1 -type d | sed -e '/.*drivers\/$/d' | sort) ; do
            echo "$(basename $d)"
        done 
    else
        continue
    fi   
done 
