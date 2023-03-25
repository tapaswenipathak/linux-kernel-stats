# version targetted = v5.15-rc7

#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/buffer/ ];then
    mkdir ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/buffer/
    echo "Working.."
else
    echo "Working..."
fi


keywordArray=(
  "buffer"
  "buffer_head"
  "dma_buf"
  "page cache"
  "slab allocator"
  "scatter-gather" 
  "kernel buffer"
  "virtual address"
  "physical address"
  "mmu_gather"
  "vm_area_struct"
  "inode buffer"
  "bio_list"
  "page"
  "task_struct"
  "kvec"
  "address_space"
)

ver_name="v5.15-rc7"
git checkout ${ver_name}

for keyword in ${keywordArray[@]}; do
   if [ -n "$(git log --all --grep="$keyword")" ];then 
    file_name="${keyword}_${ver_name}.txt"
    git log --all --grep="$keyword" > ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/buffer/$file_name
   else
   echo "No such string '$keyword' exists in the git log."
   fi
done 


