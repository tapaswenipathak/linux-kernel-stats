#!/bin/bash

if [ ! -d "mps_gitlogs" ]; then
    mkdir mps_gitlogs
fi

# Define an array of search terms
declare -a search_terms=(
  "message passing"
  "IPC"
  "pipes"
  "sockets"
  "mailbox"
  "message queue"
  "RPC"
  "shared memory"
  "semaphore"
)

cd ~/archive

echo "Searching for message passing in Linux version v1.0"
git checkout "v1.0"

for term in "${search_terms[@]}"; do
    git log --all --grep="$term" > "../mps_gitlogs/v1.0_$term.gitlog.txt"
done

cd ..

cd ~/kbd

echo "Searching for message passing in Linux version v2.0"
git checkout "v2.0" &> /dev/null

for term in "${search_terms[@]}"; do
    git log --all --grep="$term" > "../mps_gitlogs/v2.0_$term.gitlog.txt"
done

cd ..


SRCDIR=~/linux-stable
cd "$SRCDIR"

# Loop through the kernel versions and search for the terms
for ((i=3; i<=6; i++)); do
  echo "Searching for message passing in Linux version v$i.0"
  
  # Check out the kernel version
  git checkout -q "v$i.0" &> /dev/null

  # Loop through the search terms and search the git log for each term
  for term in "${search_terms[@]}"; do
    git log --all --grep="$term" > "../mps_gitlogs/v$i.0_$term.gitlog.txt"
  done
done



echo "Done searching git logs"
git checkout master &> /dev/null

cd ~/mps_gitlogs
for file in *; do
    if [ ! -s "$file" ]; then
        rm "$file"
    fi
done



