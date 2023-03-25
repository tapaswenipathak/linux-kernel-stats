#!/bin/bash

# Obtains git logs files for DMA driver and its related keywords, for different linux kernel versions.
# Contributor: patelmadhu06@gmail.com

cd ~/kbd

myArray=("dma_pool_alloc" "dma_pool_free" "dma_pool_destroy"  "dma_pool_create" "dma_map_*" "dma_addr_t" "dma_set_mask_and_coherent" "dma_set_mask" "dma_set_coherent_mask" "DMA_TO_DEVICE" "DMA_FROM_DEVICE" "dma_mapping_error" "dma_map_page" "dma_api" "dma-api" "DMA_API" "DMA-API" "DMADEVICES" "dma_buf" "dma_buffer" "DMA_ENGINE" "DMA_VIRTUAL_CHANNELS")
    git checkout 2.0.0
    for string in ${myArray[@]}; do
        if [ -n "$(git log --all --grep="$string")" ]; then 
            echo -e "\e[6;35m \n version 2.0.0 \n \e[0m"
            echo -e "\e[6;35m \n ${string} \n \e[0m" 
            git log --all --grep="$string" 
         else
            echo -e "\e[6;35m \n version 2.0.0 \n \e[0m"
            echo "No such string exists in version 2.0.0 in the git log." 
            continue
        fi
    done 
   
cd ..

cd ~/archive
    git checkout v1.0
    
    for string in ${myArray[@]}; do
        if [ -n "$(git log --all --grep="$string")" ]; then 
            echo -e "\e[6;35m \n v$i.0 \n \e[0m"
            echo -e "\e[6;35m \n ${string} \n \e[0m"
            git log --all --grep="$string" 
         else
            echo -e "\e[6;35m \n v$i.0 \n \e[0m"
            echo "No such string exists in version v$i.0 in the git log." 
            continue
        fi
    done 
   
cd ..
SRCDIR_e=~/linux-stable/linux-stable
cd $SRCDIR_e

for ((i=3; i<=6; i++)); do
    git checkout -fq v$i.0
    if [[ $? -eq 0 ]]; then
        for string in ${myArray[@]}; do
           if [ -n "$(git log --all --grep="$string")" ]; then 
                echo -e "\e[6;35m \n v$i.0 \n \e[0m"
                echo -e "\e[6;35m \n ${string} \n \e[0m"
                git log --all --grep="$string"
           else
                echo -e "\e[6;35m \n v$i.0 \n \e[0m"
                echo "No such string exists in version v$i.0 in the git log." 
                continue
           fi
        done 
    else
        continue
    fi
done 