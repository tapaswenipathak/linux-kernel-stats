#!/bin/bash

# list of all drivers for each version since 1991 to 2023
# Contributor: patelmadhu06@gmail.com

SRCDIR=~/linux-stable
if [ -d "$SRCDIR/drivers" ]; then
  cd "$SRCDIR/drivers"
elif [ -d "$SRCDIR/linux-stable/drivers" ]; then
  cd "$SRCDIR/linux-stable/drivers"
else
  echo "Directory not found"
  exit 1
fi

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#all_versions[@]} 

for ((i=0; i<=$n; i++)); do
    git checkout -fq ${all_versions[$i]}
    if [[ $? -eq 0 ]]; then
        echo ""
        echo ${all_versions[$i]}
        for d in $(find . -maxdepth 1 -type d | sed -e '/.*drivers\/$/d' | sort) ; do
            echo "$(basename $d)"
        done 
    else
        continue
    fi   
done 
