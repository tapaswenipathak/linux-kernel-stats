# version targetted = v4.8-rc1


#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/sound/ ];then
    mkdir ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/sound/
    echo "Working.."
else
    echo "Working..."
fi


keywordArray=(
    "SOUND"
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

ver_name="v4.8-rc1"
git checkout ${ver_name}


# Count of keywords
m=${#keywordArray[@]}

for ((j=0; j < m; j++)); do
   if [ -n "$(git log --all --grep="${keywordArray[$j]}")" ];then
        file_name="$(echo ${keywordArray[$j]} | tr -d ' ')"
        file_name+="${ver_name}.txt"
        echo $file_name
        echo -e "\e[6;35m \n ${ver_name} \n \e[0m"
        git log --all --grep="${keywordArray[$j]}" > ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/sound/$file_name
   else
       echo -e "\e[6;35m \n ${ver_name}\n \e[0m"
       echo "No such string '${keywordArray[$j]}' exists in the git log(for version ${ver_name})."
   fi
done 


