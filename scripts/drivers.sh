#!/bin/bash

# drivers.sh gives the count of no.of lines in each type of driver present in each version of linux kernel
# Contributor: kavita23meena.2002@gmail.com

SRCDIR=~/linux-stable/linux-stable
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
        for d in $(find ~/linux-stable/linux-stable/drivers/ -maxdepth 1 -type d | sed -e '/.*drivers\/$/d' | sort) ; do
            echo -ne "$(basename $d)\t"
            echo "$(find $d -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{sum=0}{sum+=$1}END{print sum}')"
        done | sort -nr -k2
    else
        continue
    fi   
done



