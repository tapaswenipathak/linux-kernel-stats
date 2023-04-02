#!/bin/bash

# Obtains the gitlog (grep) files for Clock Support Configuration, from all linux kernel versions
# Contributor: duttabhishek0@gmail.com

if [ ! -d ~/linux-kernel-stats/data_dir/clock_config_support_data_dump/ ];then
    mkdir ~/linux-kernel-stats/data_dir/clock_config_support_data_dump/
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

# for v1.0
SRCDIR_1=~/erofs-utils/
cd $SRCDIR_1

git checkout -fq "v1.0"
for keyword in "${keywordArray[@]}"; do
    if [ -n "$(git log --all --grep="$keyword" --regexp-ignore-case)" ];then 
            if [ ! -f ~/linux-kernel-stats/data_dir/clock_config_support_data_dump/$keyword_v1.0.txt ]; then
                echo -e "\e[6;35m \n v1.0 \n \e[0m"
                file_name="${keyword}_v1.0.txt"
                git log --all --grep="$keyword" > ~/linux-kernel-stats/data_dir/clock_config_support_data_dump/$file_name
            fi    
    else
       echo -e "\e[6;35m \n v1.0 \n \e[0m"
       echo "No such string '$keyword' exists in the git log(for version v1.0)."
    fi
done

cd ..

# for v2.0
SRCDIR_2=~/kbd/
cd $SRCDIR_2

git checkout -fq "2.0.0"
for keyword in "${keywordArray[@]}"; do
    if [ -n "$(git log --all --grep="$keyword" --regexp-ignore-case)" ];then 
        if [ ! -f ~/linux-kernel-stats/data_dir/clock_config_support_data_dump/$keyword_v2.0.txt ]; then
            echo -e "\e[6;35m \n v2.0 \n \e[0m"
            file_name="${keyword}_v2.0.txt"
            git log --all --grep="$keyword" > ~/linux-kernel-stats/data_dir/clock_config_support_data_dump/$file_name
        fi
    else
       echo -e "\e[6;35m \n v2.0 \n \e[0m"
       echo "No such string '$keyword' exists in the git log(for version v2.0)."
    fi
done

cd ..

# for v3.0 to v6.0
SRCDIR_3=~/linux-stable/
cd $SRCDIR_3

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | grep -E '.*\.0$' | sort -V))  

# Version to be extended
ver_name1="v4.14"
# Add the version to the array
all_versions+=("$ver_name1")

# Version to be extended
ver_name2="v4.16"
# Add the version to the array
all_versions+=("$ver_name2")

#total no. of versions
n=${#all_versions[@]}  


for ((i=n-1; i>=0; --i)); do
    git checkout -fq ${all_versions[$i]}
    if [[ $? -eq 0 ]]; then
        for keyword in ${keywordArray[@]}; do
           if [ -n "$(git log --all --grep="$keyword" --regexp-ignore-case)" ];then
                if [ ! -f ~/linux-kernel-stats/data_dir/clock_config_support_data_dump/$keyword_${all_versions[$i]}.txt ]; then
                    echo -e "\e[6;35m \n ${all_versions[$i]} \n \e[0m"
                    file_name="${keyword}_${all_versions[$i]}.txt"
                    git log --all --grep="$keyword" > ~/linux-kernel-stats/data_dir/clock_config_support_data_dump/$file_name
                fi
           else
               echo -e "\e[6;35m \n ${all_versions[$i]}\n \e[0m"
               echo "No such string '$keyword' exists in the git log(for version ${all_versions[$i]})."
           fi
        done 
    else
        continue
    fi
done 