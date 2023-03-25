# version targetted = v4.1

#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/hardware_tracing/ ];then
    mkdir ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/hardware_tracing/
    echo "Working.."
else
    echo "Working..."
fi


keywordArray=(
    "perf"
    "ftrace"
    "kprobes"
    "uprobes"
    "trace-cmd"
    "LTTng"
    "BPF"
    "eBPF"
    "ktap"
    "SystemTap"
    "CoreSight"
    "TPIU"
    "ETB"
    "STM"
    "PTM"
    "CTI"
    "TMC"
    "ETF"
    )

ver_name="v4.1"
git checkout ${ver_name}

for keyword in ${keywordArray[@]}; do
   if [ -n "$(git log --all --grep="$keyword")" ];then 
    file_name="${keyword}_${ver_name}.txt"
    git log --all --grep="$keyword" > ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/hardware_tracing/$file_name
   else
   echo "No such string '$keyword' exists in the git log."
   fi
done 


