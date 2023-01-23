#!/bin/bash

SRCDIR=~/linux-stable/linux-stable

cd $SRCDIR
#!/bin/bash

SRCDIR=~/linux-stable/linux-stable
cd $SRCDIR

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#all_versions[@]}  

for ((i=0; i<=$n; i++)); do
	LATEST=$(git tag | sed -n -e "s/${all_versions[$i]}\([0-9]*\)$/\1/p" | sort -nr | head -1)
    git checkout -fq ${all_versions[$i]}$LATEST
    if [[ $? -eq 0 ]]; then
        echo -ne "${all_versions[$i]}\t"
        find . -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
        # paste <(echo "${all_versions[$i]}") <(find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}') | column -s $'\t' -t
    else
        continue
    fi
done