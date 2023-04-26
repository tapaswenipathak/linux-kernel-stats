#!/bin/bash

# list of all drivers for each version since 1991 to 2023
# Contributor: patelmadhu06@gmail.com

# Handling case when linux-stable is downloaded
# as a zip file, it creates a sub-directory with same name.
SRCDIR=~/linux-stable/
if [ -d $SRCDIR/linux-stable ]; then
  cd $SRCDIR/linux-stable/
else
  cd $SRCDIR
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
        # Check if the driver directory exists
        if [ ! -d drivers ]; then
          echo "No drivers"
          exit 0
        else
          for d in $(find . -maxdepth 1 -type d | sed -e '/.*drivers\/$/d' | sort) ; do
          echo "$(basename $d)"
          done 
        fi
    else
        continue
    fi   
done
