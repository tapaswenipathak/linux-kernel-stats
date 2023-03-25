#!/bin/bash

# Obtains the grep files for firmware, from all linux kernel versions 
# Contributor: duttabhishek0@gmail.com

# for v2.6.39.4 to v6.0
SRCDIR=~/linux-stable
# Directory to store the text extracted from grep command
DIRNAME="Firmware_raw"

cd $SRCDIR
if [ ! -d "~/linux-kernel-stats/data_dir/$DIRNAME" ]; then
  # Create the directory if it doesn't exist
  mkdir "~/linux-kernel-stats/data_dir/$DIRNAME"
  echo "Fetching firmware information"
else
	echo "Fetching firmware information"
fi

# Checkout to the specific tag
git checkout -fq refs/tags/v2.6.39.4
grep -q -r "fwname" > ~/linux-kernel-stats/data_dir/$DIRNAME/2.6.39.4.txt

for((i=3; i<=6; i++)); do
	git checkout -fq refs/tags/v$i.0
	grep -q -r "fwname" > ~/linux-kernel-stats/data_dir/$DIRNAME/$i.0.txt
done
echo "Firmware info stored at ~/linux-kernel-stats/data_dir/$DIRNAME "
