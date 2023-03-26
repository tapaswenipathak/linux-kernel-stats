# version targetted = v4.8-rc1

#!/bin/bash
SRCDIR_e=~/linux-stable/
cd $SRCDIR_e

ver_name="v4.8-rc1"
git checkout ${ver_name}

grep -Eio '[[:alnum:]_\.-]+@[[:alnum:]_\.-]+\.[[:alpha:].]{2,}' MAINTAINERS | awk -F "@" '{print $2}' | sort -u >  ~/linux-kernel-research/linux-kernel-stats/data_dir/extended_scripts/${ver_name}_orgs.txt


