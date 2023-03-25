#!/bin/bash

# # Obtains the gitlog (grep) files for cpu threshold driver, from all linux kernel versions
# Contributor: patelmadhu06@gmail.com

cd ~/linux-stable/linux-stable

myArray=("idle_time" "get_cpu_idle_time_jiffy"  "cpuidle" "CPUIdle" "cpuidle_state" "cpuidle_state_usage" "scaling_min_freq" "scaling_max_freq" "sched_load_balance" "*sched_load_balance" "*cfs_quota_us" "cfs_quota_us" "get_cpu_idle_time" "cpufreq" "MAX_CPUS_IN_ONE_REQ" "cpu_model" "cpufreq_sysfs_present" "alloc_cpu_set" "free__cpu_set" "create_cpu_map" "get_cpu_count" "cpu_threshhold")

for ((i=3; i<=6; i++)); do
    git checkout -fq v$i.0
    if [[ $? -eq 0 ]]; then
        for string in ${myArray[@]}; do
           if [ -n "$(git log --all --grep="$string")" ]; then 
                echo -e "\e[6;35m \n v$i.0 \n \e[0m"
                echo -e "\e[6;35m \n ${string} \n \e[0m"
                git log --all --grep="$string" 
           else
                echo -e "\e[6;35m \n v$i.0 \n \e[0m"
                echo "No such string exists in version v$i.0 in the git log."
                continue
           fi
        done 
    else
        continue
    fi
done 

cd ..

cd ~/kbd
    git checkout 2.0.0
    for string in ${myArray[@]}; do
        if [ -n "$(git log --all --grep="$string")" ]; then 
            echo -e "\e[6;35m \n version 2.0.0 \n \e[0m"
            echo -e "\e[6;35m \n ${string} \n \e[0m" 
            git log --all --grep="$string" 
         else
            echo -e "\e[6;35m \n version 2.0.0 \n \e[0m"
            echo "No such string exists in version 2.0.0 in the git log." 
            continue
        fi
    done 
   
cd ..

cd ~/archive

    git checkout v1.0
    
    for string in ${myArray[@]}; do
        if [ -n "$(git log --all --grep="$string")" ]; then 
            echo -e "\e[6;35m \n v$i.0 \n \e[0m"
            echo -e "\e[6;35m \n ${string} \n \e[0m"
            git log --all --grep="$string"
         else
            echo -e "\e[6;35m \n v$i.0 \n \e[0m"
            echo "No such string exists in version v$i.0 in the git log." 
            continue
        fi
    done 
   

