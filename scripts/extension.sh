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
        echo ""
        echo ${all_versions[$i]}
        find -type d -name .git -prune -o -type f | sed -n -e 's/^.*\.\([a-zA-Z]*\)$/\1/p' | sort | uniq -c | sort -nr
        continue
    fi
done
