#!/bin/bash
SRCDIR=~/torvalds/linux

# Files Number in drivers
cd $SRCDIR

for ((i=12;i<=39;i++)) ; do
	echo v2.6.$i 
	git checkout -fq v2.6.$i
	echo "files in drivers      `find drivers -type f | wc -l`"
done

for ((i=0;i<=19;i++)) ; do
	echo v3.$i
	git checkout -fq v3.$i
	echo "files in drivers      `find drivers -type f | wc -l`"
done

for ((i=0;i<=20;i++)) ; do
	echo v4.$i 
	git checkout -fq v4.$i
	echo "files in drivers      `find drivers -type f | wc -l`"
done

for ((i=0;i<=19;i++)) ; do
	echo v5.$i 
	git checkout -fq v5.$i
	echo "files in drivers      `find drivers -type f | wc -l`"
done