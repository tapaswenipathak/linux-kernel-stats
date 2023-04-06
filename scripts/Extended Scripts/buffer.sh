#!/bin/sh

# Obtains the grep files for buffer provided for all linux kernel versions 
# Contributor: meetdheerajreddy@gmail.com

if [ ! -d "buffer_gitlogs" ]; then
    mkdir buffer_gitlogs
fi


declare -a search_terms=(
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

cd ~/archive

echo "Searching for message passing in Linux version v1.0"

# Check out the kernel version
git checkout -fq "v1.0" &> /dev/null

# Loop through the search terms and search the git log for each term
for term in "${search_terms[@]}"; do
filename="v1.0_$term.buffer.txt"

if [ ! -f "../buffer_gitlogs/$filename" ]; then
git log --all --grep="$term" > "../buffer_gitlogs/$filename"
fi

done

cd ..

cd ~/linux-stable

for ((i=3; i<=6; i++)); do
  echo "Searching for message passing in Linux version v$i.0"
  
  # Check out the kernel version
  git checkout -fq "v$i.0" &> /dev/null

  # Loop through the search terms and search the git log for each term
  for term in "${search_terms[@]}"; do
    filename="v$i.0_$term.buffer.txt"
    
    if [ ! -f "../buffer_gitlogs/$filename" ]; then
      git log --all --grep="$term" > "../buffer_gitlogs/$filename"
    fi

  done
done

# Extended Version
ver_name="v5.16-rc1"
git checkout ${ver_name}

for keyword in ${search_terms[@]}; do
   if [ -n "$(git log --all --grep="$keyword")" ];then 
    file_name="${keyword}_${ver_name}.txt"
    git log --all --grep="$keyword" > ~/linux-kernel-stats/data_dir/extended_scripts/buffer/$file_name
   else
   echo "No such string '$keyword' exists in the git log."
   fi
done

ver_name="v5.15-rc7"
git checkout ${ver_name}

for keyword in ${search_terms[@]}; do
   if [ -n "$(git log --all --grep="${keyword}")" ];then 
    file_name="${keyword}_${ver_name}.txt"
    git log --all --grep="$keyword" > ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/buffer/$file_name
   else
   echo "No such string '$keyword' exists in the git log."
   fi
done 