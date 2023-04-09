#!/bin/bash

# Obtains grep files of the sound driver, for all linux versions.
# grep search is case insensitive
# Contributor: patelmadhu06@gmail.com

cd ~/linux-stable/linux-stable

myArray=("SOUND"
    "sound"
    "SOUND_OSS_CORE"
    "dmasound"
    "SND"
    "ALSA"
    "pcmcia"
    "sparc"
    "parisc"
    "soc"
    "x86"
    "synth"
    "xen"
    "virtio"
    "sound_core"
    "SND_DRIVERS"
    "soundcard"
    "SND_VIRMIDI"
)

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

ver_name1="v4.8-rc1"
git checkout ${ver_name1}

for string in ${myArray[@]}; do
   if [ -n "$(git log --all --grep="$string")" ]; then 
        echo -e "\e[6;35m \n $ver_name1 \n \e[0m"
        echo -e "\e[6;35m \n ${string} \n \e[0m"
        git log --all --grep="$string" 
   else
        echo -e "\e[6;35m \n ${ver_name1} \n \e[0m"
        echo "No such string exists in version ${ver_name1} in the git log." 
        continue
   fi
done 

ver_name2="v4.20.10"
git checkout ${ver_name2}

for string in ${myArray[@]}; do
   if [ -n "$(git log --all --grep="$string")" ]; then 
        echo -e "\e[6;35m \n $ver_name2 \n \e[0m"
        echo -e "\e[6;35m \n ${string} \n \e[0m"
        git log --all --grep="$string" 
   else
        echo -e "\e[6;35m \n ${ver_name2} \n \e[0m"
        echo "No such string exists in version ${ver_name2} in the git log." 
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
   

