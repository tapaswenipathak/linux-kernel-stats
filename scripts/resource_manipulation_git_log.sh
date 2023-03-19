#!/bin/bash

# Script for git log files for Polling for all linux versions 
# Contributor: duttabhishek0@gmail.com

if [ ! -d ~/linux-kernel-stats/data_dir/resource_manipulation_data_dump/ ];then
    mkdir ~/linux-kernel-stats/data_dir/resource_manipulation_data_dump/
    echo "Working.."
else
    echo "Working..."
fi

keywordArray=(
    "Memory Management"
    "Virtual Memory"
    "file Systems"
    "block_device"
    "IO"
    "VFS"
    "cache"
    "interrupt"
    "stream"
    "Interrupt Handling"
    "Kernel Threads"
    "Atomic Operations"
    "Memory Barriers"
    "Wait Queues"
    "Slab Allocator"
    "Garbage Collection"
    "Resource Tracking"
    "paging"
    "page fault"
)

# Count of keywords
m=${#keywordArray[@]}


# for v1.0
SRCDIR_1=~/erofs-utils/
cd $SRCDIR_1

git checkout -fq "v1.0"
for ((j=0; j < m; j++)); do
        if [ -n "$(git log --all --grep="${keywordArray[$j]}")" ];then
        echo -e "\e[6;35m \n v1.0 \n \e[0m"
        file_name="$(echo ${keywordArray[$j]} | tr -d ' ')"
        file_name+="v1.0.txt"
        git log --all --grep="$keyword" > ~/linux-kernel-stats/data_dir/resource_manipulation_data_dump/$file_name
    else
       echo -e "\e[6;35m \n v1.0 \n \e[0m"
       echo "No such string '${keywordArray[$j]}' exists in the git log(for version v1.0)."
    fi
done

cd ..

# for v2.0
SRCDIR_2=~/kbd/
cd $SRCDIR_2

git checkout -fq "2.0.0"
for ((j=0; j < m; j++)); do
        if [ -n "$(git log --all --grep="${keywordArray[$j]}")" ];then
        echo -e "\e[6;35m \n v1.0 \n \e[0m"
        file_name="$(echo ${keywordArray[$j]} | tr -d ' ')"
        file_name+="v2.0.txt"
        git log --all --grep="$keyword" > ~/linux-kernel-stats/data_dir/resource_manipulation_data_dump/$file_name
    else
       echo -e "\e[6;35m \n v2.0 \n \e[0m"
       echo "No such string '${keywordArray[$j]}' exists in the git log(for version v2.0)."
    fi
done

cd ..

# for v3.0 to v6.0
SRCDIR_3=~/linux-stable/
cd $SRCDIR_3

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | grep -E '.*\.0$' | sort -V))  

#total no. of versions
n=${#all_versions[@]}  


for ((i=n-1; i>=0; --i)); do
    git checkout -fq ${all_versions[$i]}
    if [[ $? -eq 0 ]]; then
        for ((j=0; j < m; j++)); do
           if [ -n "$(git log --all --grep="${keywordArray[$j]}")" ];then
                file_name="$(echo ${keywordArray[$j]} | tr -d ' ')"
                file_name+="${all_versions[$i]}.txt"
                echo $file_name
                echo -e "\e[6;35m \n ${all_versions[$i]} \n \e[0m"
                git log --all --grep="${keywordArray[$j]}" > ~/linux-kernel-stats/data_dir/resource_manipulation_data_dump/$file_name
           else
               echo -e "\e[6;35m \n ${all_versions[$i]}\n \e[0m"
               echo "No such string '${keywordArray[$j]}' exists in the git log(for version ${all_versions[$i]})."
           fi
        done 
    else
        continue
    fi
done 