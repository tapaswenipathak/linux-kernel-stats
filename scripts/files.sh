#!/bin/bash

# Displays list files in all versions of linux kernel (v0.01 to latest)
# Contributor: kavita23meena.2002@gmail.com

SRCDIR_a=~/archive
cd $SRCDIR_a

#declaring an array containing versions
declare -a versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#versions[@]}  

for ((i=0; i<$n; i++)); do
    git checkout -fq ${versions[$i]}
    if [[ $? -eq 0 ]]; then
    (echo "${versions[$i]}")
    (find . -type f -not -regex '\./\.git/.*') | column -s $'\t' -t
    else
        continue
    fi
done


SRCDIR_b=~/erofs-utils
cd $SRCDIR_b

#declaring an array containing versions
declare -a versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#versions[@]}  

for ((i=1; i<$n; i++)); do
    git checkout -fq ${versions[$i]}
    if [[ $? -eq 0 ]]; then
    (echo "${versions[$i]}")
    (find . -type f -not -regex '\./\.git/.*') | column -s $'\t' -t
    else
        continue
    fi
done


SRCDIR_c=~/kbd
cd $SRCDIR_c

#declaring an array containing  versions
declare -a versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#versions[@]} 

for ((i=39; i<46; i++)); do
    git checkout -fq ${versions[$i]}
    if [[ $? -eq 0 ]]; then
    (echo "${versions[$i]}")
    (find . -type f -not -regex '\./\.git/.*') | column -s $'\t' -t
    else
        continue
    fi
done


SRCDIR_d=~/history
cd $SRCDIR_d

#declaring an array containing versions
declare -a versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#versions[@]}

for ((i=9; i<168; i++)); do
    git checkout -fq ${versions[$i]}
    if [[ $? -eq 0 ]]; then
    (echo "${versions[$i]}")
    (find . -type f -not -regex '\./\.git/.*') | column -s $'\t' -t
    else
        continue
    fi
done


SRCDIR_e=~/linux-stable/linux-stable
cd $SRCDIR_e

#declaring an array containing versions
declare -a versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#versions[@]}  

for ((i=2; i<=$n; i++)); do
    git checkout -fq ${versions[$i]}
    if [[ $? -eq 0 ]]; then
    (echo "${versions[$i]}")
    (find . -type f -not -regex '\./\.git/.*') | column -s $'\t' -t
    else
        continue
    fi
done