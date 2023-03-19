# !/bin/bash

# Release date of all main versions of linux kernel
# Contributor: kavita23meena.2002@gmail.com

SRCDIR_a=~/archive
cd $SRCDIR_a

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#all_versions[@]}  

for ((i=0; i<=3; i++)); do
    git checkout -fq ${all_versions[$i]}
    date=$(git log -1 --pretty=format:%cs ${all_versions[$i]})
    echo "${all_versions[$i]} - released on $date"
done

for ((i=7;i<=9;i++)) ; do
    git checkout -fq v0.9$i
    date=$(git log -1 --pretty=format:%cs v0.9$i)
    echo "v0.9$i - released on $date"
done


SRCDIR_b=~/erofs-utils
cd $SRCDIR_b

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#all_versions[@]} 

for ((i=0; i<6; i++)); do
    git checkout -fq v1.$i
    date=$(git log -1 --pretty=format:%cs v1.$i)
    echo "v1.$i - released on $date"
done


SRCDIR_c=~/kbd
cd $SRCDIR_c
 
    git checkout -fq v2.0
    date=$(git log -1 --pretty=format:%cs v2.0)
    echo "v2.0 - released on $date"

for ((i=1; i<=4; i++)); do
    git checkout -fq v2.$i.0
    date=$(git log -1 --pretty=format:%cs v2.$i.0)
    echo "v2.$i.0 - released on $date"
done  


SRCDIR_d=~/history
cd $SRCDIR_d

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

for ((i=5; i<=6; i++)); do
    git checkout -fq v2.$i.0
    date=$(git log -1 --pretty=format:%cs v2.$i.0)
    echo "v2.$i.0 - released on $date"
done  

for ((i=1; i<=11; i++)); do
    git checkout -fq v2.6.$i
    date=$(git log -1 --pretty=format:%cs v2.6.$i)
    echo "v2.6.$i - released on $date"
done  


SRCDIR_e=~/linux-stable/linux-stable
cd $SRCDIR_e

for ((i=12;i<=39;i++)) ; do
    git checkout -fq v2.6.$i
    date=$(git log -1 --pretty=format:%cs v2.6.$i)
    echo "v2.6.$i - released on $date"
done  

for ((i=0;i<=19;i++)) ; do
    git checkout -fq v3.$i
    date=$(git log -1 --pretty=format:%cs v3.$i)
    echo "v3.$i - released on $date"
done  

for ((i=0;i<=20;i++)) ; do
    git checkout -fq v4.$i
    date=$(git log -1 --pretty=format:%cs v4.$i)
    echo "v4.$i - released on $date"
done  

for ((i=0;i<=19;i++)) ; do
    git checkout -fq v5.$i
    date=$(git log -1 --pretty=format:%cs v5.$i)
    echo "v5.$i - released on $date"
done  

for ((i=0;i<2;i++)) ; do
    git checkout -fq v6.$i
    date=$(git log -1 --pretty=format:%cs v6.$i)
    echo "v6.$i - released on $date"
done  