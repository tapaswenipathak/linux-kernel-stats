#!/bin/bash

# Obtains git log (grep) files for NFC driver, for all versions of Linux kernel versions
# Contributor: patelmadhu06@gmail.com 

cd ~/kbd

myArray=("message passing"
    "IPC"
    "pipes"
    "sockets"
    "mailbox"
    "message queue"
    "RPC"
    "shared memory"
    "semaphore"
    "asynchronous messaging"
    "message protocol"
    "multicast"
    "broadcast"
    "ZeroMQ"
    "JMS"
    "MPI"
    "rendezvous"
    "SCTP"
    "sctp_association"
    "sctp_sendmsg"
    "tipc"
    "netlink"
    "netlink_unicast"
)
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
            echo -e "\e[6;35m \n v$i.0 \n \e[0m"]
            echo -e "\e[6;35m \n ${string} \n \e[0m"
            git log --all --grep="$string"
         else
            echo -e "\e[6;35m \n v$i.0 \n \e[0m"
            echo "No such string exists in version v$i.0 in the git log." 
        fi
    done 

cd ..
SRCDIR_e=~/linux-stable/linux-stable
cd $SRCDIR_e
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

# Extend the version
ver_name1="v5.5.10"
git checkout ${ver_name1}

for string in ${myArray[@]}; do
   if [ -n "$(git log --all --grep="$string")" ]; then 
        echo -e "\e[6;35m \n $ver_name1 \n \e[0m"
        echo -e "\e[6;35m \n ${string} \n \e[0m"
        git log --all --grep="$string" 
   else
        echo -e "\e[6;35m \n $ver_name1 \n \e[0m"
        echo "No such string exists in version $ver_name1 in the git log." 
        continue
   fi
done

ver_name2="v5.11-rc1"
git checkout ${ver_name2}

for string in ${myArray[@]}; do
   if [ -n "$(git log --all --grep="$string")" ]; then 
        cho -e "\e[6;35m \n ${ver_name2} \n \e[0m"
        echo -e "\e[6;35m \n ${string} \n \e[0m"
        git log --all --grep="$string" 
   else
        echo -e "\e[6;35m \n ${ver_name2} \n \e[0m"
        echo "No such string exists in version ${ver_name2} in the git log." 
        continue
   fi
done 

