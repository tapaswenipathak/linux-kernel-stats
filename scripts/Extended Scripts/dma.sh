# version targetted = v6.1-rc1



#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/dma/ ];then
    mkdir ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/dma/
    echo "Working.."
else
    echo "Working..."
fi


keywordArray=(
    "dma_pool_alloc"
    "dma_pool_free"
    "dma_pool_destroy"
    "dma_pool_create"
    "dma_map_*"
    "dma_addr_t"
    "dma_set_mask_and_coherent"
    "dma_set_mask"
    "dma_set_coherent_mask"
    "DMA_TO_DEVICE"
    "DMA_FROM_DEVICE"
    "dma_mapping_error"
    "dma_map_page"
    "dma_api"
    "dma-api"
    "DMA_API"
    "DMA-API"
    "DMADEVICES"
    "dma_buf"
    "dma_buffer"
    "DMA_ENGINE"
    "DMA_VIRTUAL_CHANNELS"
)

ver_name="v6.1-rc1"
git checkout ${ver_name}

for keyword in ${keywordArray[@]}; do
   if [ -n "$(git log --all --grep="$keyword" --regexp-ignore-case)" ];then 
    file_name="${keyword}_${ver_name}.txt"
    git log --all --grep="$keyword" > ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/dma/$file_name
   else
   echo "No such string '$keyword' exists in the git log."
   fi
done 


