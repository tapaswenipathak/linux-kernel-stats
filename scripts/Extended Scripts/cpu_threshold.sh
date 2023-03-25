# version targetted = v5.5-rc7


#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/cpu_threshhold/ ];then
    mkdir ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/cpu_threshhold/
    echo "Working.."
else
    echo "Working..."
fi


keywordArray=(
    "idle_time"
    "get_cpu_idle_time_jiffy"
    "cpuidle"
    "CPUIdle"
    "cpuidle_state"
    "cpuidle_state_usage"
    "scaling_min_freq"
    "scaling_max_freq"
    "*sched_load_balance"
    "*cfs_quota_us"
    "get_cpu_idle_time"
    "cpufreq"
    "MAX_CPUS_IN_ONE_REQ"
    "cpu_model"
    "cpufreq_sysfs_present"
    "alloc_cpu_set"
    "free__cpu_set"
    "create_cpu_map"
    "get_cpu_count"
    "cpu_threshhold"
)

ver_name="v5.5-rc7"
git checkout ${ver_name}

for keyword in ${keywordArray[@]}; do
   if [ -n "$(git log --all --grep="$keyword" --regexp-ignore-case)" ];then 
    file_name="${keyword}_${ver_name}.txt"
    git log --all --grep="$keyword" > ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/cpu_threshhold/$file_name
   else
   echo "No such string '$keyword' exists in the git log."
   fi
done 


