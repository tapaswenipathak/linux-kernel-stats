#!/bin/bash

cd ~/archive
git checkout -fq v1.0
grep -Eio '[[:alnum:]_\.-]+@[[:alnum:]_\.-]+\.[[:alpha:].]{2,}' CREDITS | awk -F "@" '{print $2}' | sort -u >   /home/kavita/github/data_directory/org/v1.0_orgs.txt

cd ~/linux_v2.0
grep -Eio '[[:alnum:]_\.-]+@[[:alnum:]_\.-]+\.[[:alpha:].]{2,}' MAINTAINERS | awk -F "@" '{print $2}' | sort -u  >  /home/kavita/github/data_directory/org/v2.0_orgs.txt

cd ~/linux-stable/linux-stable
for ((i=3; i<=6; i++)); do
    git checkout -fq v$i.0
    grep -Eio '[[:alnum:]_\.-]+@[[:alnum:]_\.-]+\.[[:alpha:].]{2,}' MAINTAINERS | awk -F "@" '{print $2}' | sort -u >  /home/kavita/github/data_directory/org/v$i.0_orgs.txt
done