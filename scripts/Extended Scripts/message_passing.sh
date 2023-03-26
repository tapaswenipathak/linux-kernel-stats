# version targetted = v5.17.1



#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/message_passing/ ];then
    mkdir ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/message_passing/
    echo "Working.."
else
    echo "Working..."
fi


keywordArray=(
    "message passing"
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

ver_name="v5.17.1"
git checkout ${ver_name}

for keyword in ${keywordArray[@]}; do
   if [ -n "$(git log --all --grep="$keyword")" ];then 
    file_name="${keyword}_${ver_name}.txt"
    git log --all --grep="$keyword" > ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/message_passing/$file_name
   else
   echo "No such string '$keyword' exists in the git log."
   fi
done 


