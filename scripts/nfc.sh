#!/bin/bash

# Obtains git log (grep) files for NFC driver, for all versions of Linux kernel versions
# Contributor: patelmadhu06@gmail.com 

cd ~/kbd

myArray=("NFC" "NFC device*" "Near Field Communication (NFC)" "Near Field Communication (NFC) devices" "NFC_CMD_GET_DEVICE" "NFC_CMD_START_POLL" "NFC_CMD_STOP_POLL" "NFC_CMD_GET_TARGET" "NFC_EVENT_DEVICE_ADDED" "NFC_EVENT_DEVICE_REMOVED" "NFC_EVENT_TARGETS_FOUND" "PF_NFC" "nfc_protocol")
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
            echo -e "\e[6;35m \n v$i.0 \n \e[0m"]
            echo -e "\e[6;35m \n ${string} \n \e[0m"
            git log --all --grep="$string"
         else
            echo -e "\e[6;35m \n v$i.0 \n \e[0m"
            echo "No such string exists in version v$i.0 in the git log." 
        fi
    done 

cd ..
SRCDIR_e=~/linux-stable/linux-stable
cd $SRCDIR_e
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