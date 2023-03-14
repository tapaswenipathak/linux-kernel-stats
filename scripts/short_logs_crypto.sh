#!/bin/sh

# Obtains shortlogs of crypto driver, for all linux versions.
# Contributor: patelmadhu06@gmail.com

SRCDIR_e=~/linux-stable/linux-stable
cd $SRCDIR_e

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | grep -E '.*\.0$' | sort -V))  

#total no. of versions
n=${#all_versions[@]}  

myArray=("AES" "3DES" "DES" "TDES" "SHA1" "SHA2" "MD5" "HMAC-SHA1" "SHA256" "HMAC-SHA256" "SHA224" "SHA384" "SHA512" "PAES" "ECDH" "CRC" "GHASH" "ablkcipher" "ahash" "aead" "*Triple DES*" 
    "*SHA1 digest algorithms*" "*SHA256 digest algorithms*" "*SHA384 digest algorithms*" "*SHA512 digest algorithms*" "GHASH digest algorithms" )
for ((i=2; i<=$n; i++)); do
    git checkout -fq ${all_versions[$i]}
    if [[ $? -eq 0 ]]; then
        for string in ${myArray[@]}; do
           if git log | grep -E "$string" | grep -q .
           then 
            echo -e "\e[6;35m \n ${all_versions[$i]} \n \e[0m"
            file_name="${string}_${all_versions[$i]}.txt"
            git log | grep -E "$string"
           # > "$file_name"
           else
           echo -e "\e[6;35m \n ${all_versions[$i]}\n \e[0m"
           echo "No such string '$string' exists in the git log."
           fi
        done 
    else
        continue
    fi
done 