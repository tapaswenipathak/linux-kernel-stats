#!/bin/bash

# Obtains git logs of romtype driver for all linux kernel versions
# grep search is case insensitive
# Contributor: patelmadhu06@gmail.com

cd ~/linux-stable/linux-stable

myArray=( "rom"
    "rom_length"
    "ROM"
    "ROMs"
    "SPI flash"
    "OneNAND"
    "FRAM"
    "MRAM"
    "RRAM"
    "PCM"
    "NVRAM"
    "Battery-backed RAM"
    "USB flash drive"
    "SD card"
    "MMC"
    "DiskOnChip"
    "USB Stick"
    "eMMC"
    "iSDIO"
    "SDIO"
    "UFS"
    "SAS SSD"
    "SCSI SSD"
    "SATA SSD"
    "PATA SSD"
    "NVMe SSD"
    "UltraDIMM"
    "OTP"
    "WORM"
    "P-Flash memory"
    "S-Flash memory"
    "Q-Flash memory"
    "E-Flash memory"
    "Spansion S25FLXXX Series NOR Flash ROM"
    "ISSI IS25LPXXX NOR Flash ROM"
    "Xicor X25FXXX Series EEPROM"
    "24cXX I2C EEPROM"
    "SST 39VF3201 Flash ROM"
    "MTD Flash ROMs"
    "AM29F040B Flash ROM"
    "EPROM"
    "EEPROM"
    "ROM image"
    "*rom_size"
    "*map_rom"
    "*unmap_rom"
    "EEPROM"
    "CD-ROM"
    "DVD-ROM"
    "NAND flash"
    "NOR flash"
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

# Extend version 
ver_name1="v5.3"
git checkout ${ver_name1}

for string in ${myArray[@]}; do
   if [ -n "$(git log --all --grep="$string")" ]; then 
        echo -e "\e[6;35m \n $ver_name1 \n \e[0m"
        echo -e "\e[6;35m \n ${string} \n \e[0m"
        git log --all --grep="$string" 
   else
        echo -e "\e[6;35m \n ${ver_name1}\n \e[0m"
        echo "No such string exists in version ${ver_name1} in the git log."
        continue
   fi
done 

ver_name2="v5.6"
git checkout ${ver_name2}

for string in ${myArray[@]}; do
   if [ -n "$(git log --all --grep="$string")" ]; then 
        echo -e "\e[6;35m \n $ver_name2 \n \e[0m"
        echo -e "\e[6;35m \n ${string} \n \e[0m"
        git log --all --grep="$string" 
   else
        echo -e "\e[6;35m \n ${ver_name2}\n \e[0m"
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
            continue
        fi
    done 
   

