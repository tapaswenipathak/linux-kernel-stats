# version targetted = v5.6-rc1



#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/crypto/ ];then
    mkdir ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/crypto/
    echo "Working.."
else
    echo "Working..."
fi


keywordArray=(
    "AES"
    "3DES"
    "DES"
    "TDES"
    "SHA1"
    "SHA2"
    "MD5"
    "HMAC-SHA1"
    "SHA256"
    "HMAC-SHA256"
    "SHA224"
    "SHA384"
    "SHA512"
    "PAES"
    "ECDH"
    "CRC" 
    "GHASH"
    "ablkcipher"
    "ahash"
    "aead"
    "*Triple DES*" 
    "*SHA1 digest algorithms*"
    "*SHA256 digest algorithms*"
    "*SHA384 digest algorithms*"
    "*SHA512 digest algorithms*"
    "GHASH digest algorithms"
)

ver_name="v5.6-rc1"
git checkout ${ver_name}

for keyword in ${keywordArray[@]}; do
   if [ -n "$(git log --all --grep="$keyword" --regexp-ignore-case)" ];then 
    file_name="${keyword}_${ver_name}.txt"
    git log --all --grep="$keyword" > ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/crypto/$file_name
   else
   echo "No such string '$keyword' exists in the git log."
   fi
done 


