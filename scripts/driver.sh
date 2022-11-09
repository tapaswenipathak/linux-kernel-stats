#!/bin/bash
SRCDIR=~/linux-stable/

# Number of Directories in drivers
cd $SRCDIR

for ((i=12;i<=39;i++)) ; do
	echo v2.6.$i 
	git checkout -fq v2.6.$i
	if [ $i == 12 ]; then
	cd drivers
	fi
	location=
	ls -d */ | wc -l
done

for ((i=0;i<=19;i++)) ; do
	echo v3.$i
	git checkout -fq v3.$i
	if [ $i == 0 ]; then
	cd drivers
	fi
	ls -d */ | wc -l
done

for ((i=0;i<=20;i++)) ; do
	echo v4.$i 
	git checkout -fq v4.$i
	if [ $i == 0 ]; then
	cd drivers
	fi
	ls -d */ | wc -l
done

for ((i=0;i<=19;i++)) ; do
	echo v5.$i 
	git checkout -fq v5.$i
	if [ $i == 0 ]; then
	cd drivers
	fi
	ls -d */ | wc -l
done

for ((i=1; i<=7; i++)); do
    echo v6.0.$i
    git checkout -fq v6.0.$i
    if [ $i == 1 ]; then
	cd drivers
	fi
	ls -d */ | wc -l
done
