# version targetted = v2.6.16-rc1

#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/firmware_dump/ ];then
    mkdir ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/firmware_dump/
    echo "Working.."
else
    echo "Working..."
fi


firmwareArray=("firmware" "fwname" "qcom" "advansys" "Intel" "fuc409c" "fuc41ac" "fuc41ad" "fuc409d" "wd719x" "FIRMWARE_BCM2048" "FIRMWARE_TI1271" "FIRMWARE_MT7622" "isp1000" "OR51132_VSB_FIRMWARE" "OR51132_QAM_FIRMWARE" 
    "qlogic" "SAA7164_REV2_FIRMWARE" "SAA7164_REV3_FIRMWARE" "38C0800" "38C1600"  "FIRMWARE_MT7663" "FIRMWARE_MT7668" "QTN_PCI_PEARL_FW_NAME" "mcode")

ver_name="v2.6.16-rc1"
git checkout ${ver_name}

for keyword in ${firmwareArray[@]}; do
   if [ -n "$(git log --all --grep="$keyword")" ];then 
    file_name="${keyword}_${ver_name}.txt"
    git log --all --grep="$keyword" > ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/firmware_dump/$file_name
   else
   echo "No such string '$keyword' exists in the git log."
   fi
done 


