#!/bin/bash

# Generates No. of lines of code of Subsystems present in each version of linux kernel
# Contributor: kavita23meena.2002@gmail.com

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
        echo "${all_versions[$i]}"
        for d in arch block crypto drivers fs init ipc kernel lib mm net security sound virt ; do
        echo -ne "$d\t"
	    echo "$(find $d -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{sum=0}{sum+=$1}END{print sum}')"
        done
        echo
    else
        continue
    fi   
done
