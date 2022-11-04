#!/bin/bash

SRCDIR=~/torvalds/linux

cd $SRCDIR

for ((i=12;i<=39;i++)) ; do
	echo v2.6.$i
	git checkout -fq v2.6.$i
	find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done

for ((i=0;i<=19;i++)) ; do
	echo v3.$i
	git checkout -fq v3.$i
	find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done

for ((i=0;i<=20;i++)) ; do
	echo v4.$i
	git checkout -fq v4.$i
	find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done

for ((i=0;i<=19;i++)) ; do
	echo v5.$i
	git checkout -fq v5.$i
	find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


echo v6.0
git checkout -fq v6.0
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
