#!/bin/bash

# Obtains the no. of staging directories for each version of linux kernel
# Contributor: patelmadhu06@gmail.com

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
            SRCDIR="$SRCDIR_b/staging"
                if [ -d "$SRCDIR" ] && [ $? -eq 0 ]; then
                    cd $SRCDIR
                    echo ${all_versions[$i]}
                    ls -ld */ | wc -l
                else
                    paste <(echo "${all_versions[$i]}", "no staging directory")
                fi
            continue
        else
            paste <(echo "${all_versions[$i]}", "no drivers directory")
        fi

    done


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
            SRCDIR="$SRCDIR_b/staging"
                if [ -d "$SRCDIR" ] && [ $? -eq 0 ]; then
                    cd $SRCDIR
                    echo ${all_versions[$i]}
                    ls -ld */ | wc -l
                else
                    paste <(echo "${all_versions[$i]}", "no staging directory")
                fi
            continue
        else
            paste <(echo "${all_versions[$i]}", "no drivers directory")
        fi

    done 


SRCDIR_a=~/kbd
cd $SRCDIR_a
    #declaring an array containing all versions
    declare -a all_versions=($(git tag -l | sort -V))  

    #total no. of versions
    n=${#all_versions[@]}  

    for ((i=39; i<46; i++)); do
        git checkout -fq ${all_versions[$i]}
        SRCDIR_b=$SRCDIR_a/drivers
        if [ -d "$SRCDIR_b" ]; then 
            cd $SRCDIR_b
            SRCDIR="$SRCDIR_b/staging"
                if [ -d "$SRCDIR" ] && [ $? -eq 0 ]; then
                    cd $SRCDIR
                    echo ${all_versions[$i]}
                    ls -ld */ | wc -l
                else
                    paste <(echo "${all_versions[$i]}", "no staging directory")
                fi
            continue
        else
            paste <(echo "${all_versions[$i]}", "no drivers directory")
        fi

    done 

SRCDIR_a=~/history
cd $SRCDIR_a
    #declaring an array containing all versions
    declare -a all_versions=($(git tag -l | sort -V))  

    #total no. of versions
    n=${#all_versions[@]}  

    for ((i=9; i<168; i++)); do
        git checkout -fq ${all_versions[$i]}
        SRCDIR_b=$SRCDIR_a/drivers
        if [ -d "$SRCDIR_b" ]; then 
            cd $SRCDIR_b
            SRCDIR="$SRCDIR_b/staging"
                if [ -d "$SRCDIR" ] && [ $? -eq 0 ]; then
                    cd $SRCDIR
                    echo ${all_versions[$i]}
                    ls -ld */ | wc -l
                else
                    paste <(echo "${all_versions[$i]}", "no staging directory")
                fi
            continue
        else
            paste <(echo "${all_versions[$i]}", "no drivers directory")
        fi

    done

SRCDIR_a=~/linux-stable/linux-stable
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
            SRCDIR="$SRCDIR_b/staging"
                if [ -d "$SRCDIR" ] && [ $? -eq 0 ]; then
                    cd $SRCDIR
                    echo ${all_versions[$i]}
                    ls -ld */ | wc -l
                else
                    paste <(echo "${all_versions[$i]}", "no staging directory")
                fi
            continue
        else
            paste <(echo "${all_versions[$i]}", "no drivers directory")
        fi

    done 