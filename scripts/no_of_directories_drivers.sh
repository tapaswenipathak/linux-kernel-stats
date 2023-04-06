#!/bin/bash

# Obtains the number of directories in each version of linux kernel
# Contributors: meetdheerajreddy@gmail.com, patelmadhu06@gmail.com

SRCDIR_a=~/archive
cd $SRCDIR_a
    #declaring an array containing all versions
    declare -a all_versions=($(git tag -l | sort -V))  

    #total no. of versions
    n=${#all_versions[@]}  

    for ((i=0; i<$n; i++)); do
        git checkout -fq ${all_versions[$i]}
        SRCDIR_b=$SRCDIR_a/drivers
        if [ -d "$SRCDIR_b" ]; then 
            cd $SRCDIR_b
            echo ${all_versions[$i]} 
            ls -ld */ | wc -l
        else
            paste <(echo "${all_versions[$i]}", "no drivers directory")
        fi
    done >> ~/linux-kernel-stats/data_dir/output_no_of_directories_drivers.txt

SRCDIR_a=~/erofs-utils
cd $SRCDIR_a
    #declaring an array containing all versions
    declare -a all_versions=($(git tag -l | sort -V))  

    #total no. of versions
    n=${#all_versions[@]}  

    for ((i=0; i<$n; i++)); do
        git checkout -fq ${all_versions[$i]}
        SRCDIR_b=$SRCDIR_a/drivers
        if [ -d "$SRCDIR_b" ]; then 
            cd $SRCDIR_b
            echo ${all_versions[$i]} 
            ls -ld */ | wc -l
            continue
        else
            paste <(echo "${all_versions[$i]}", "no drivers directory")
        fi
    done >> ~/linux-kernel-stats/data_dir/output_no_of_directories_drivers.txt

SRCDIR_a=~/kbd
cd $SRCDIR_a
    #declaring an array containing all versions
    declare -a all_versions=($(git tag -l | sort -V))  

    #total no. of versions
    n=${#all_versions[@]}  

    for ((i=0; i<$n; i++)); do
        git checkout -fq ${all_versions[$i]}
        SRCDIR_b=$SRCDIR_a/drivers
        if [ -d "$SRCDIR_b" ]; then 
            cd $SRCDIR_b
            echo ${all_versions[$i]} 
            ls -ld */ | wc -l
            continue
        else
            paste <(echo "${all_versions[$i]}", "no drivers directory")
        fi
    done >> ~/linux-kernel-stats/data_dir/output_no_of_directories_drivers.txt

SRCDIR_a=~/history
cd $SRCDIR_a
    #declaring an array containing all versions
    declare -a all_versions=($(git tag -l | sort -V))  

    #total no. of versions
    n=${#all_versions[@]}  

    for ((i=0; i<$n; i++)); do
        git checkout -fq ${all_versions[$i]}
        SRCDIR_b=$SRCDIR_a/drivers
        if [ -d "$SRCDIR_b" ]; then 
            cd $SRCDIR_b
            echo ${all_versions[$i]} 
            ls -ld */ | wc -l
            continue
        else
            paste <(echo "${all_versions[$i]}", "no drivers directory")
        fi
    done >> ~/linux-kernel-stats/data_dir/output_no_of_directories_drivers.txt

SRCDIR_a=~/linux-stable
cd $SRCDIR_a
    #declaring an array containing all versions
    declare -a all_versions=($(git tag -l | sort -V))  

    #total no. of versions
    n=${#all_versions[@]}  

    for ((i=0; i<$n; i++)); do
        git checkout -fq ${all_versions[$i]}
        SRCDIR_b=$SRCDIR_a/drivers
        if [ -d "$SRCDIR_b" ]; then 
            cd $SRCDIR_b
            echo ${all_versions[$i]} 
            ls -ld */ | wc -l
            continue
        else
            paste <(echo "${all_versions[$i]}", "no drivers directory")
        fi
    done >> ~/linux-kernel-stats/data_dir/output_no_of_directories_drivers.txt
