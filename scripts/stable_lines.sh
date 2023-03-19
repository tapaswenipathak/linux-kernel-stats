#!/bin/bash

# Contributors: meetdheerajreddy@gmail.com, tapaswenipathak@gmail.com
SRCDIR=~/linux-stable

cd $SRCDIR

for ((i=12;i<=39;i++)) ; do
	LATEST=$(git tag | sed -n -e "s/v2\.6\.$i\.\([0-9]*\)$/\1/p" | sort -nr | head -1)
	echo -ne "v2.6.$i\t"
	git checkout -fq v2.6.$i.$LATEST
	find . -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done

for ((i=0;i<=19;i++)) ; do
	LATEST=$(git tag | sed -n -e "s/v3\.$i\.\([0-9]*\)$/\1/p" | sort -nr | head -1)
	echo -ne "v3.$i\t"
	git checkout -fq v3.$i.$LATEST
	find . -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done

for ((i=0;i<=20;i++)) ; do
	LATEST=$(git tag | sed -n -e "s/v4\.$i\.\([0-9]*\)$/\1/p" | sort -nr | head -1)
	echo -ne "v4.$i\t"
	git checkout -fq v4.$i.$LATEST
	find . -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done

for ((i=0;i<=2;i++)) ; do
	LATEST=$(git tag | sed -n -e "s/v5\.$i\.\([0-9]*\)$/\1/p" | sort -nr | head -1)
	echo -ne "v5.$i\t"
	git checkout -fq v5.$i.$LATEST
	find . -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done
