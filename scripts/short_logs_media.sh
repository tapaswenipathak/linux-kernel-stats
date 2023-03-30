#!/bin/sh

# Obtains shortlogs of media driver, for all linux versions.
# Contributor: patelmadhu06@gmail.com

SRCDIR_e=~/linux-stable/linux-stable
cd $SRCDIR_e

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | grep -E '.*\.0$' | sort -V))  

#total no. of versions
n=${#all_versions[@]}  

myArray=("H.264" "HEVC" "*NXP*" "*Xcieve*" "*TEA*" "*Infineon*" "*Philips*" "*Rafael*" "*Silicon*" "*NXP*" "*Quantek*" "*Sharp*" "*MaxLinear*" "*Microtune*" "*Mirics*" "*Freescale*" "*Maxim*" "*Montage*" "*ITE*" "*FCI*" "*Fitipower*" 
    "*Elonics*" "*Webcams*" "*Video*" "*tuners*" "*sensors*" "*AM/FM*" "*V4L2*" "*analog*" "*radio*" "*Fitipower*" "*V4L2*" "*disk*" "*cdrom*" "*tape*")
for ((i=2; i<=$n; i++)); do
    git checkout -fq ${all_versions[$i]}
    if [[ $? -eq 0 ]]; then
        for string in ${myArray[@]}; do
           if git log | grep -E "$string" | grep -q .
           then 
            echo -e "\e[6;35m \n ${all_versions[$i]} \n \e[0m"
            file_name="${string}_${all_versions[$i]}.txt"
            git log | grep -E "$string"
           else
           echo -e "\e[6;35m \n ${all_versions[$i]}\n \e[0m"
           echo "No such string '$string' exists in the git log."
           fi
        done 
    else
        continue
    fi
done 