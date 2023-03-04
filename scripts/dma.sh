#!/bin/bash
SRCDIR_e=~/linux-stable/linux-stable
cd $SRCDIR_e

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | grep -E '.*\.0$' | sort -V))  

#total no. of versions
n=${#all_versions[@]}  

myArray=("DMA-API" "DMADEVICES" "DMA_API" "DMA_ENGINE" "dma-api" "DMA_VIRTUAL_CHANNEL" "dma_api" "dma_buf" "dma_buffer")

for ((i=2; i<=$n; i++)); do
    git checkout -fq ${all_versions[$i]}
    if [[ $? -eq 0 ]]; then
        for string in ${myArray[@]}; do
           if git log | grep -E "$string" | grep -q .
           then 
            echo -e "\e[6;35m \n ${all_versions[$i]} \n \e[0m"
            file_name="${string}_${all_versions[$i]}.txt"
            git log | grep -E "$string"
           # > "$file_name"
           else
           echo -e "\e[6;35m \n ${all_versions[$i]}\n \e[0m"
           echo "No such string '$string' exists in the git log."
