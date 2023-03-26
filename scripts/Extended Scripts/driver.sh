# version targetted = v6.2-rc1


#!/bin/bash
SRCDIR=~/linux-stable/
cd $SRCDIR/drivers


ver_name="v6.2-rc1"
git checkout ${ver_name}

for d in $(find ~/linux-stable/drivers/ -maxdepth 1 -type d | sed -e '/.*drivers\/$/d' | sort) ; do
    echo -ne "$(basename $d)\t"
    echo "$(find $d -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{sum=0}{sum+=$1}END{print sum}')"
done | sort -nr -k2


