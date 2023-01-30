# !/bin/bash

SRCDIR_a=~/archive
cd $SRCDIR_a

#declaring an array containing versions
declare -a versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#versions[@]}  

for ((i=1; i<$n; i++)); do
    number_of_patches=$(git log --oneline ${versions[$(($i-1))]}..${versions[$i]}| wc -l)
    paste <(echo "${versions[$(($i-1))]}..${versions[$i]}") <(echo "$number_of_patches") | column -s $'\t' -t
done


SRCDIR_b=~/erofs-utils
cd $SRCDIR_b

#declaring an array containing versions
declare -a versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#versions[@]}  

for ((i=1; i<$n; i++)); do
  number_of_patches=$(git log --oneline ${versions[$(($i-1))]}..${versions[$i]}| wc -l)
    paste <(echo "${versions[$(($i-1))]}..${versions[$i]}") <(echo "$number_of_patches") | column -s $'\t' -t
done


SRCDIR_c=~/kbd
cd $SRCDIR_c

#declaring an array containing versions
declare -a versions=($(git tag -l | sort -V))  

for ((i=40; i<47; i++)); do
  number_of_patches=$(git log --oneline ${versions[$(($i-1))]}..${versions[$i]}| wc -l)
  paste <(echo "${versions[$(($i-1))]}..${versions[$i]}") <(echo "$number_of_patches") | column -s $'\t' -t
done


SRCDIR_d=~/history
cd $SRCDIR_d

#declaring an array containing versions
declare -a versions=($(git tag -l | sort -V))  

for ((i=10; i<168; i++)); do
  number_of_patches=$(git log --oneline ${versions[$(($i-1))]}..${versions[$i]}| wc -l)
    paste <(echo "${versions[$(($i-1))]}..${versions[$i]}") <(echo "$number_of_patches") | column -s $'\t' -t
done


SRCDIR_e=~/linux-stable/linux-stable
cd $SRCDIR_e

#declaring an array containing versions
declare -a versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#versions[@]}  

for ((i=2; i<=$n; i++)); do
  number_of_patches=$(git log --oneline ${versions[$(($i-1))]}..${versions[$i]}| wc -l)
    paste <(echo "${versions[$(($i-1))]}..${versions[$i]}") <(echo "$number_of_patches") | column -s $'\t' -t
done