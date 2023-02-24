#!/bin/bash
SRCDIR_e=~/linux-stable/
dir_name="firmware"
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-stats/data_dir/firmware_dump/ ];then
    mkdir ~/linux-kernel-stats/data_dir/firmware_dump/
    echo "Working.."
else
    echo "Working..."
fi
#declaring an array containing all versions
declare -a all_versions=($(git tag -l | grep -E '.*\.0$' | sort -V))  
all_versions+=(v2.6.39.4)
#total no. of versions
n=${#all_versions[@]}  
# for value in "${all_versions[@]}"
# do
#      echo $value
# done
firmwareArray=("firmware" "fwname" "qcom" "advansys" "Intel" "fuc409c" "fuc41ac" "fuc41ad" "fuc409d" "wd719x" "FIRMWARE_BCM2048" "FIRMWARE_TI1271" "FIRMWARE_MT7622" "isp1000" "OR51132_VSB_FIRMWARE" "OR51132_QAM_FIRMWARE" 
    "qlogic" "SAA7164_REV2_FIRMWARE" "SAA7164_REV3_FIRMWARE" "38C0800" "38C1600"  "FIRMWARE_MT7663" "FIRMWARE_MT7668" "QTN_PCI_PEARL_FW_NAME" "mcode")

# git checkout -fq refs/tags/v2.6.39.4

for ((i=n-1; i>=0; --i)); do
    git checkout -fq ${all_versions[$i]}
    if [[ $? -eq 0 ]]; then
        for keyword in ${firmwareArray[@]}; do
           if git log --all | grep -E "$keyword" | grep -q .
           then 
            echo -e "\e[6;35m \n ${all_versions[$i]} \n \e[0m"
            file_name="${keyword}_${all_versions[$i]}.txt"
            git log --all | grep -E "$keyword" > ~/linux-kernel-stats/data_dir/firmware_dump/$file_name
           else
           echo -e "\e[6;35m \n ${all_versions[$i]}\n \e[0m"
           echo "No such string '$keyword' exists in the git log."
           fi
        done 
    else
        continue
    fi
done 