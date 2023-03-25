# version targetted = v6.2-rc1



#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

if [ ! -d ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/polling/ ];then
    mkdir ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/polling/
    echo "Working.."
else
    echo "Working..."
fi


keywordArray=(
    "poll"
    "polling"
    "poll_wait"
    "epoll"
    "epoll_wait"
    "select"
    "poll_initwait"
    "poll_schedule_timeout"
    "poll_freewait"
    "interrupt handler"
    "interrupt"
    "waitqueue"
    "tasklet"
    "Workqueue"
    "poll_idle"
    "poll_freewait"
    "poll_schedule_timeout"
    "poll_wait"
    "poll_softirq"
    "poll_restart"
    "poll_interrupt"
)

ver_name="v6.2-rc1"
git checkout ${ver_name}

for keyword in ${keywordArray[@]}; do
   if [ -n "$(git log --all --grep="$keyword")" ];then 
    file_name="${keyword}_${ver_name}.txt"
    git log --all --grep="$keyword" > ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/polling/$file_name
   else
   echo "No such string '$keyword' exists in the git log."
   fi
done 


