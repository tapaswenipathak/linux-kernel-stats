#!/bin/bash

# List of organisations supported for v1.0 to v6.0
# Contributor: kavita23meena.2002@gmail.com

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

# Extend the version
ver_name="v3.10-rc7"
git checkout ${ver_name}

grep -Eio '[[:alnum:]_\.-]+@[[:alnum:]_\.-]+\.[[:alpha:].]{2,}' MAINTAINERS | awk -F "@" '{print $2}' | sort -u >  ~/linux-kernel-stats/data_dir/extended_scripts/${ver_name}_orgs.txt

ver_name="v4.8-rc1"
git checkout ${ver_name}

grep -Eio '[[:alnum:]_\.-]+@[[:alnum:]_\.-]+\.[[:alpha:].]{2,}' MAINTAINERS | awk -F "@" '{print $2}' | sort -u >  ~/linux-kernel-stats/data_dir/extended_scripts/${ver_name}_orgs.txt