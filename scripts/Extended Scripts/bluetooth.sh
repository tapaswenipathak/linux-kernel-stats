# version targetted = v5.1

#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/bluetooth/ ];then
    mkdir ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/bluetooth/
    echo "Working.."
else
    echo "Working..."
fi


keywordArray=(
    "bluetooth"
    "BLUETOOTH"
    "BLUETOOTH_VER"
)

ver_name="v5.1"
git checkout ${ver_name}

for keyword in ${keywordArray[@]}; do
   if [ -n "$(git log --all --grep="$keyword")" ];then 
    file_name="${keyword}_${ver_name}.txt"
    git log --all --grep="$keyword" > ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/bluetooth/$file_name
   else
   echo "No such string '$keyword' exists in the git log."
   fi
done 


