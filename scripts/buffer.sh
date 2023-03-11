#!/bin/sh

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
  "inode"
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
