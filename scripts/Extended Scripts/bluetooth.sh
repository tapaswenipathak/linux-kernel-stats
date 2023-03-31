#!/bin/bash

# Obtains the grep files for bluetooth driver from all linux kernel versions 
# grep search is case insensitive
# Contributor: patelmadhu06@gmail.com
cd ~/linux-stable/linux-stable

myArray=("bluetooth" "BLUETOOTH" "BLUETOOTH_VER")

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

ver_name="v5.1"
git checkout ${ver_name}
for string in ${myArray[@]}; do
   if [ -n "$(git log --all --grep="$string")" ]; then 
        echo -e "\e[6;35m \n ${ver_name} \n \e[0m"
        echo -e "\e[6;35m \n ${string} \n \e[0m"
        git log --all --grep="$string" 
   else
        echo -e "\e[6;35m \n ${ver_name} \n \e[0m"
        echo "No such string exists in version ${ver_name} in the git log." 
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
    fi
done 