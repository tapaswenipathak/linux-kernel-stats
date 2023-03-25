# version targetted = v4.16

#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/clock_config_support/ ];then
    mkdir ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/clock_config_support/
    echo "Working.."
else
    echo "Working..."
fi


keywordArray=(
    "jiffies"
    "clocksource"
    "timekeeping"
    "timer"
    "chrony"
    "adjtime"
    "clock_gettime"
    "clockevents"
    "timeconst"
    "hrtimer"
    "CLOCK_MONOTONIC"
    "CLOCK_REALTIME"
    "CLOCK_MONOTONIC"
    "clocksource_driver"
    "timecounter"
    "tick"
    ".*ktime.*"
    ".*time.*"
    ".*clock.*"
    ".*power.*"
)

ver_name="v4.16"
git checkout ${ver_name}

for keyword in ${keywordArray[@]}; do
   if [ -n "$(git log --all --grep="$keyword" --regexp-ignore-case)" ];then 
    file_name="${keyword}_${ver_name}.txt"
    git log --all --grep="$keyword" > ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/clock_config_support/$file_name
   else
   echo "No such string '$keyword' exists in the git log."
   fi
done 


