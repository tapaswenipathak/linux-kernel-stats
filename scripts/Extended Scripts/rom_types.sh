# version targetted = v5.3


#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/rom_types/ ];then
    mkdir ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/rom_types/
    echo "Working.."
else
    echo "Working..."
fi


keywordArray=(
    "rom"
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

ver_name="v5.3"
git checkout ${ver_name}


# Count of keywords
m=${#keywordArray[@]}

for ((j=0; j < m; j++)); do
   if [ -n "$(git log --all --grep="${keywordArray[$j]}")" ];then
        file_name="$(echo ${keywordArray[$j]} | tr -d ' ')"
        file_name+="${ver_name}.txt"
        echo $file_name
        echo -e "\e[6;35m \n ${ver_name} \n \e[0m"
        git log --all --grep="${keywordArray[$j]}" > ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/rom_types/$file_name
   else
       echo -e "\e[6;35m \n ${ver_name}\n \e[0m"
       echo "No such string '${keywordArray[$j]}' exists in the git log(for version ${ver_name})."
   fi
done 


