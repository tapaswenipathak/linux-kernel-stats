# version targetted = v5.17.1


#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/spinLog/ ];then
    mkdir ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/spinLog/
    echo "Working.."
else
    echo "Working..."
fi


keywordArray=(
    "spinlock"
    "spinlock_t"
    "rwlock_t"
    "ticket_spin_lock"
    "raw_spinlock_t"
    "qspinlock"
    "ticket_spin_trylock"
    "ticket_spin_unlock"
    "read_lock"
    "ticket_spin_is_locked"
    "read_trylock"
    "read_unlock"
    "write_lock"
    "write_trylock"
    "write_unlock"
    "raw_spin_lock"
    "raw_spin_trylock"
    "raw_spin_unlock"
    "raw_spin_lock_irq"
    "raw_spin_lock_irqsave"
    "raw_spin_unlock_irq"
    "raw_spin_unlock_irqrestore"
    "spin_lock"
    "spin_trylock"
    "spin_unlock"
    "spin_lock_irq"
    "spin_lock_irqsave"
    "spin_unlock_irq"
    "spin_unlock_irqrestore"
)

ver_name="v5.17.1"
git checkout ${ver_name}


# Count of keywords
m=${#keywordArray[@]}

for ((j=0; j < m; j++)); do
   if [ -n "$(git log --all --grep="${keywordArray[$j]}")" ];then
        file_name="$(echo ${keywordArray[$j]} | tr -d ' ')"
        file_name+="${ver_name}.txt"
        echo $file_name
        echo -e "\e[6;35m \n ${ver_name} \n \e[0m"
        git log --all --grep="${keywordArray[$j]}" > ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/spinLog/$file_name
   else
       echo -e "\e[6;35m \n ${ver_name}\n \e[0m"
       echo "No such string '${keywordArray[$j]}' exists in the git log(for version ${ver_name})."
   fi
done 


