#!/bin/bash

SRCDIR_a=~/archive
cd $SRCDIR_a

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#all_versions[@]}  

for ((i=0; i<$n; i++)); do
    git checkout -fq ${all_versions[$i]}
    if [[ $? -eq 0 ]]; then
        paste <(echo "${all_versions[$i]}") 
    else
        continue
    fi
done >> /home/madhu/Desktop/Research_Work/linux-kernel-stats/data_dir/versions_till_now.txt


SRCDIR_b=~/erofs-utils
cd $SRCDIR_b

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))

#total no. of versions
n=${#all_versions[@]}  

for ((i=1; i<$n; i++)); do
    git checkout -fq ${all_versions[$i]}
    if [[ $? -eq 0 ]]; then
        paste <(echo "${all_versions[$i]}")
    else
        continue
    fi
done >> /home/madhu/Desktop/Research_Work/linux-kernel-stats/data_dir/versions_till_now.txt


SRCDIR_c=~/kbd
cd $SRCDIR_c

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

for ((i=39; i<46; i++)); do
    git checkout -fq ${all_versions[$i]}
    if [[ $? -eq 0 ]]; then
        paste <(echo "${all_versions[$i]}")
    else
        continue
    fi
done >> /home/madhu/Desktop/Research_Work/linux-kernel-stats/data_dir/versions_till_now.txt


SRCDIR_d=~/history
cd $SRCDIR_d

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

for ((i=9; i<168; i++)); do
    git checkout -fq ${all_versions[$i]}
    if [[ $? -eq 0 ]]; then
        paste <(echo "${all_versions[$i]}") 
    else
        continue
    fi
done >> /home/madhu/Desktop/Research_Work/linux-kernel-stats/data_dir/versions_till_now.txt

SRCDIR_e=~/linux-stable/linux-stable
cd $SRCDIR_e

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#all_versions[@]}  

for ((i=2; i<=$n; i++)); do
    git checkout -fq ${all_versions[$i]}
    if [[ $? -eq 0 ]]; then
        paste <(echo "${all_versions[$i]}")
    else
        continue
    fi
done >> /home/madhu/Desktop/Research_Work/linux-kernel-stats/data_dir/versions_till_now.txt