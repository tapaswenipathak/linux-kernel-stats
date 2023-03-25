# !/bin/bash

# Displays no. of files changed, insertions, deletions b/w two consecutive versions; for all versions.
# Contributor: kavita23meena.2002@gmail.com
SRCDIR_a=~/archive
cd $SRCDIR_a

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#all_versions[@]}  

for ((i=1; i<$n; i++)); do
    diffstat=$(git diff --shortstat ${all_versions[$(($i-1))]}..${all_versions[$i]})
    paste <(echo "${all_versions[$(($i-1))]}..${all_versions[$i]}") <(echo "$diffstat") | column -s $'\t' -t
done


SRCDIR_b=~/erofs-utils
cd $SRCDIR_b

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#all_versions[@]}  

for ((i=1; i<$n; i++)); do
    diffstat=$(git diff --shortstat ${all_versions[$(($i-1))]}..${all_versions[$i]})
    paste <(echo "${all_versions[$(($i-1))]}..${all_versions[$i]}") <(echo "$diffstat") | column -s $'\t' -t
done


SRCDIR_c=~/kbd
cd $SRCDIR_c

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#all_versions[@]} 

for ((i=40; i<47; i++)); do
    diffstat=$(git diff --shortstat ${all_versions[$(($i-1))]}..${all_versions[$i]})
    paste <(echo "${all_versions[$(($i-1))]}..${all_versions[$i]}") <(echo "$diffstat") | column -s $'\t' -t
done


SRCDIR_d=~/history
cd $SRCDIR_d

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#all_versions[@]}

for ((i=10; i<168; i++)); do
    diffstat=$(git diff --shortstat ${all_versions[$(($i-1))]}..${all_versions[$i]})
    paste <(echo "${all_versions[$(($i-1))]}..${all_versions[$i]}") <(echo "$diffstat") | column -s $'\t' -t
done


SRCDIR_e=~/linux-stable/linux-stable
cd $SRCDIR_e

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#all_versions[@]}  

for ((i=2; i<$n; i++)); do
    diffstat=$(git diff --shortstat ${all_versions[$(($i-1))]}..${all_versions[$i]})
    paste <(echo "${all_versions[$(($i-1))]}..${all_versions[$i]}") <(echo "$diffstat") | column -s $'\t' -t
done