# version targetted = v4.8-rc1

#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/bus_protocols/ ];then
    mkdir ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/bus_protocols/
    echo "Working.."
else
    echo "Working..."
fi


keywordArray=(
  "bus"
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
  ".*bus.*"
  "CAN bus"
)

ver_name="v4.8-rc1"
git checkout ${ver_name}

for keyword in ${keywordArray[@]}; do
   if [ -n "$(git log --all --grep="$keyword")" ];then 
    file_name="${keyword}_${ver_name}.txt"
    git log --all --grep="$keyword" > ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/bus_protocols/$file_name
   else
   echo "No such string '$keyword' exists in the git log."
   fi
done 


