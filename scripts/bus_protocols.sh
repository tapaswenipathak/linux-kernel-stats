#!/bin/sh

if [ ! -d "bp_gitlogs" ]; then
    mkdir bp_gitlogs
fi


declare -a search_terms=(
  "i2c_adapter"
  "ISA"
  "ISA Bus"
  "USB Bus"
  "PCI Bus"
  "FireWire"
  "I2C Bus"
  "I2C"
  "MMIO"
  "I3C"
)

cd ~/linux-stable

for ((i=3; i<=6; i++)); do
  echo "Searching for message passing in Linux version v$i.0"
  
  # Check out the kernel version
  git checkout -fq "v$i.0" &> /dev/null

  # Loop through the search terms and search the git log for each term
  for term in "${search_terms[@]}"; do
    filename="v$i.0_$term.bus_protocols.txt"
    
    if [ ! -f "../bp_gitlogs/$filename" ]; then
      git log --all --grep="$term" > "../bp_gitlogs/$filename"
    fi
    #git log --all --grep="$term" > "../bp_gitlogs/v$i.0_$term.bus_protocols.txt"
  done
done

