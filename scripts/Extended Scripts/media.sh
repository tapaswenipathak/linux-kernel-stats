# version targetted = v6.2-rc1



#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/media/ ];then
    mkdir ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/media/
    echo "Working.."
else
    echo "Working..."
fi


keywordArray=(
    "H.264"
    "HEVC"
    "NXP"
    "Xcieve"
    "TEA"
    "Infineon"
    "Philips"
    "Rafael"
    "Silicon"
    "NXP"
    "Quantek"
    "Sharp"
    "MaxLinear"
    "Microtune"
    "Mirics"
    "Freescale"
    "Maxim"
    "Montage"
    "ITE"
    "FCI"
    "Fitipower"
    "Elonics"
    "Webcams"
    "Video"
    "tuners"
    "sensors"
    "AM/FM"
    "V4L2"
    "analog"
    "radio"
    "Fitipower"
    "V4L2"
    "disk"
    "cdrom"
    "tape"
)

ver_name="v6.2-rc1"
git checkout ${ver_name}

for keyword in ${keywordArray[@]}; do
   if [ -n "$(git log --all --grep="$keyword")" ];then 
    file_name="${keyword}_${ver_name}.txt"
    git log --all --grep="$keyword" > ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/media/$file_name
   else
   echo "No such string '$keyword' exists in the git log."
   fi
done 


