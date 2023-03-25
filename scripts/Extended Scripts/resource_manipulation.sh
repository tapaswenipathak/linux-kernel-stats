# version targetted = v5.17.1


#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/resource_manipulation/ ];then
    mkdir ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/resource_manipulation/
    echo "Working.."
else
    echo "Working..."
fi


keywordArray=(
    "Memory Management"
    "Virtual Memory"
    "file Systems"
    "block_device"
    "IO"
    "VFS"
    "cache"
    "interrupt"
    "stream"
    "Interrupt Handling"
    "Kernel Threads"
    "Atomic Operations"
    "Memory Barriers"
    "Wait Queues"
    "Slab Allocator"
    "Garbage Collection"
    "Resource Tracking"
    "paging"
    "page fault"
)

ver_name="v5.17.1"
git checkout ${ver_name}


# Count of keywords
m=${#keywordArray[@]}

for ((j=0; j < m; j++)); do
   if [ -n "$(git log --all --grep="${keywordArray[$j]}")" ];then
        file_name="$(echo ${keywordArray[$j]} | tr -d ' ')"
        file_name+="${ver_name}.txt"
        echo $file_name
        echo -e "\e[6;35m \n ${ver_name} \n \e[0m"
        git log --all --grep="${keywordArray[$j]}" > ~/linux-kernel-stats/data_dir/extended_scripts/resource_manipulation/$file_name
   else
       echo -e "\e[6;35m \n ${ver_name}\n \e[0m"
       echo "No such string '${keywordArray[$j]}' exists in the git log(for version ${ver_name})."
   fi
done 


