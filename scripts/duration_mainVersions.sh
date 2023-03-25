# !/bin/bash

# Generates Duration of development of main versions of linux kernel
# Contributor: kavita23meena.2002@gmail.com

SRCDIR_a=~/archive
cd $SRCDIR_a

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#all_versions[@]}  

git checkout -fq v0.01
first_date=$(git log -1 --pretty=format:%cs ${all_versions[$i]})
echo "v0.01 - released on $first_date"

for ((i=1; i<3; i++)); do
    git checkout -fq  v0.1$(($i-1))
    prev_date=$(git log -1 --pretty=format:%cs v0.1$(($i-1)))
    git checkout -fq v0.1$i
    echo -ne "v0.1$i\t"
    curr_date=$(git log -1 --pretty=format:%cs v0.1$i)
    prev_date_sec=$(date -d "$prev_date"  '+%s')
    curr_date_sec=$(date -d "$curr_date"  '+%s')
    d=$(expr $curr_date_sec - $prev_date_sec)
    sec=86400
    duration=$(($d / $sec))
    echo "$duration"
done 

git checkout -fq  v0.12
    prev_date=$(git log -1 --pretty=format:%cs v0.12)
    git checkout -fq v0.97
    echo -ne "v0.97\t"
    curr_date=$(git log -1 --pretty=format:%cs v0.97)
    prev_date_sec=$(date -d "$prev_date"  '+%s')
    curr_date_sec=$(date -d "$curr_date"  '+%s')
    d=$(expr $curr_date_sec - $prev_date_sec)
    sec=86400
    duration=$(($d / $sec))
    echo "$duration"

for ((i=8;i<10;i++)) ; do
    git checkout -fq v0.9$(($i-1))
    prev_date=$(git log -1 --pretty=format:%cs v0.9$(($i-1)))
    git checkout -fq v0.9$i
    echo -ne "v0.9$i\t"
    curr_date=$(git log -1 --pretty=format:%cs v0.9$i)
    prev_date_sec=$(date -d "$prev_date"  '+%s')
    curr_date_sec=$(date -d "$curr_date"  '+%s')
    d=$(expr $curr_date_sec - $prev_date_sec)
    sec=86400
    duration=$(($d / $sec))
    echo "$duration"
done 

git checkout -fq v0.99
prev_date=$(git log -1 --pretty=format:%cs v0.99)
cd ~/erofs-utils
git checkout -fq v1.0
echo -ne "v1.0\t"
curr_date=$(git log -1 --pretty=format:%cs v1.0)
prev_date_sec=$(date -d "$prev_date"  '+%s')
curr_date_sec=$(date -d "$curr_date"  '+%s')
d=$(expr $curr_date_sec - $prev_date_sec)
sec=86400
duration=$(($d / $sec))
echo "$duration"

SRCDIR_b=~/erofs-utils
cd $SRCDIR_b

#declaring an array containing all versions
declare -a all_versions=($(git tag -l | sort -V))  

#total no. of versions
n=${#all_versions[@]} 

for ((i=1; i<6; i++)); do
git checkout -fq v1.$(($i-1))
    prev_date=$(git log -1 --pretty=format:%cs v1.$(($i-1)))
    git checkout -fq v1.$i
    echo -ne "v1.$i\t"
    curr_date=$(git log -1 --pretty=format:%cs v1.$i)
    prev_date_sec=$(date -d "$prev_date"  '+%s')
    curr_date_sec=$(date -d "$curr_date"  '+%s')
    d=$(expr $curr_date_sec - $prev_date_sec)
    sec=86400
    duration=$(($d / $sec))
    echo "$duration"
done  

git checkout -fq v1.5
prev_date=$(git log -1 --pretty=format:%cs v1.5)
cd ~/kbd
git checkout -fq v2.0
echo -ne "v2.0\t"
curr_date=$(git log -1 --pretty=format:%cs v2.0)
prev_date_sec=$(date -d "$prev_date"  '+%s')
curr_date_sec=$(date -d "$curr_date"  '+%s')
d=$(expr $curr_date_sec - $prev_date_sec)
sec=86400
duration=$(($d / $sec))
echo "$duration"

SRCDIR_c=~/kbd
cd $SRCDIR_c
 
git checkout -fq v2.0
prev_date=$(git log -1 --pretty=format:%cs v2.0)
git checkout -fq v2.1.0
echo -ne "v2.1.0\t"
curr_date=$(git log -1 --pretty=format:%cs v2.1.0)
prev_date_sec=$(date -d "$prev_date"  '+%s')
curr_date_sec=$(date -d "$curr_date"  '+%s')
d=$(expr $curr_date_sec - $prev_date_sec)
sec=86400
duration=$(($d / $sec))
echo "$duration" 

for ((i=2; i<5; i++)); do
    git checkout -fq v2.$(($i-1)).0
    prev_date=$(git log -1 --pretty=format:%cs v2.$(($i-1)).0)
    git checkout -fq v2.$i.0
    echo -ne "v2.$i.0\t"
    curr_date=$(git log -1 --pretty=format:%cs v2.$i.0)
    prev_date_sec=$(date -d "$prev_date"  '+%s')
    curr_date_sec=$(date -d "$curr_date"  '+%s')
    d=$(expr $curr_date_sec - $prev_date_sec)
    sec=86400
    duration=$(($d / $sec))
    echo "$duration"
done  

git checkout -fq v2.4.0
prev_date=$(git log -1 --pretty=format:%cs v2.4.0)
cd ~/history
git checkout -fq v2.5.0
echo -ne "v2.5.0\t"
curr_date=$(git log -1 --pretty=format:%cs v2.5.0)
prev_date_sec=$(date -d "$prev_date"  '+%s')
curr_date_sec=$(date -d "$curr_date"  '+%s')
d=$(expr $curr_date_sec - $prev_date_sec)
sec=86400
duration=$(($d / $sec))
echo "$duration"

SRCDIR_d=~/history
cd $SRCDIR_d

git checkout -fq v2.5.0
prev_date=$(git log -1 --pretty=format:%cs v2.5.0)
git checkout -fq v2.6.0
echo -ne "v2.6.0\t"
curr_date=$(git log -1 --pretty=format:%cs v2.6.0)
prev_date_sec=$(date -d "$prev_date"  '+%s')
curr_date_sec=$(date -d "$curr_date"  '+%s')
d=$(expr $curr_date_sec - $prev_date_sec)
sec=86400
duration=$(($d / $sec))
echo "$duration"

for ((i=1; i<12; i++)); do
git checkout -fq v2.6.$(($i-1))
prev_date=$(git log -1 --pretty=format:%cs v2.6.$(($i-1)))
git checkout -fq v2.6.$i
echo -ne "v2.6.$i\t"
curr_date=$(git log -1 --pretty=format:%cs v2.6.$i)
prev_date_sec=$(date -d "$prev_date"  '+%s')
curr_date_sec=$(date -d "$curr_date"  '+%s')
d=$(expr $curr_date_sec - $prev_date_sec)
sec=86400
duration=$(($d / $sec))
echo "$duration"
done

git checkout -fq v2.6.11
prev_date=$(git log -1 --pretty=format:%cs v2.6.11)
cd ~/linux-stable/linux-stable
git checkout -fq v2.6.12
echo -ne "v2.6.12\t"
curr_date=$(git log -1 --pretty=format:%cs v2.6.12)
prev_date_sec=$(date -d "$prev_date"  '+%s')
curr_date_sec=$(date -d "$curr_date"  '+%s')
d=$(expr $curr_date_sec - $prev_date_sec)
sec=86400
duration=$(($d / $sec))
echo "$duration"

SRCDIR_e=~/linux-stable/linux-stable
cd $SRCDIR_e

for ((i=13;i<40;i++)) ; do
    git checkout -fq v2.6.$(($i-1))
    prev_date=$(git log -1 --pretty=format:%cs v2.6.$(($i-1)))
    git checkout -fq v2.6.$i
    echo -ne "v2.6.$i\t"
    curr_date=$(git log -1 --pretty=format:%cs v2.6.$i)
    prev_date_sec=$(date -d "$prev_date"  '+%s')
    curr_date_sec=$(date -d "$curr_date"  '+%s')
    d=$(expr $curr_date_sec - $prev_date_sec)
    sec=86400
    duration=$(($d / $sec))
    echo "$duration"
done  

git checkout -fq v2.6.39
prev_date=$(git log -1 --pretty=format:%cs v2.6.39)
git checkout -fq v3.0
echo -ne "v3.0\t"
curr_date=$(git log -1 --pretty=format:%cs v3.0)
prev_date_sec=$(date -d "$prev_date"  '+%s')
curr_date_sec=$(date -d "$curr_date"  '+%s')
d=$(expr $curr_date_sec - $prev_date_sec)
sec=86400
duration=$(($d / $sec))
echo "$duration"

for ((i=1;i<20;i++)) ; do
    git checkout -fq v3.$(($i-1))
    prev_date=$(git log -1 --pretty=format:%cs v3.$(($i-1)))
    git checkout -fq v3.$i
    echo -ne "v3.$i\t"
    curr_date=$(git log -1 --pretty=format:%cs v3.$i)
    prev_date_sec=$(date -d "$prev_date"  '+%s')
    curr_date_sec=$(date -d "$curr_date"  '+%s')
    d=$(expr $curr_date_sec - $prev_date_sec)
    sec=86400
    duration=$(($d / $sec))
    echo "$duration"
done  

git checkout -fq v3.19
prev_date=$(git log -1 --pretty=format:%cs v3.19)
git checkout -fq v4.0
echo -ne "v4.0\t"
curr_date=$(git log -1 --pretty=format:%cs v4.0)
prev_date_sec=$(date -d "$prev_date"  '+%s')
curr_date_sec=$(date -d "$curr_date"  '+%s')
d=$(expr $curr_date_sec - $prev_date_sec)
sec=86400
duration=$(($d / $sec))
echo "$duration"

for ((i=1;i<21;i++)) ; do
    git checkout -fq v4.$(($i-1))
    prev_date=$(git log -1 --pretty=format:%cs v4.$(($i-1)))
    git checkout -fq v4.$i
    echo -ne "v4.$i\t"
    curr_date=$(git log -1 --pretty=format:%cs v4.$i)
    prev_date_sec=$(date -d "$prev_date"  '+%s')
    curr_date_sec=$(date -d "$curr_date"  '+%s')
    d=$(expr $curr_date_sec - $prev_date_sec)
    sec=86400
    duration=$(($d / $sec))
    echo "$duration"
done  

git checkout -fq v4.20
prev_date=$(git log -1 --pretty=format:%cs v4.20)
git checkout -fq v5.0
echo -ne "v5.0\t"
curr_date=$(git log -1 --pretty=format:%cs v5.0)
prev_date_sec=$(date -d "$prev_date"  '+%s')
curr_date_sec=$(date -d "$curr_date"  '+%s')
d=$(expr $curr_date_sec - $prev_date_sec)
sec=86400
duration=$(($d / $sec))
echo "$duration"

for ((i=1;i<20;i++)) ; do
    git checkout -fq v5.$(($i-1))
    prev_date=$(git log -1 --pretty=format:%cs v5.$(($i-1)))
    git checkout -fq v5.$i
    echo -ne "v5.$i\t"
    curr_date=$(git log -1 --pretty=format:%cs v5.$i)
    prev_date_sec=$(date -d "$prev_date"  '+%s')
    curr_date_sec=$(date -d "$curr_date"  '+%s')
    d=$(expr $curr_date_sec - $prev_date_sec)
    sec=86400
    duration=$(($d / $sec))
    echo "$duration"
done  

git checkout -fq v5.19
prev_date=$(git log -1 --pretty=format:%cs v5.19)
git checkout -fq v6.0
echo -ne "v6.0\t"
curr_date=$(git log -1 --pretty=format:%cs v6.0)
prev_date_sec=$(date -d "$prev_date"  '+%s')
curr_date_sec=$(date -d "$curr_date"  '+%s')
d=$(expr $curr_date_sec - $prev_date_sec)
sec=86400
duration=$(($d / $sec))
echo "$duration"

for ((i=1;i<2;i++)) ; do
    git checkout -fq v6.$(($i-1))
    prev_date=$(git log -1 --pretty=format:%cs v6.$(($i-1)))
    git checkout -fq v6.$i
    echo -ne "v6.$i\t"
    curr_date=$(git log -1 --pretty=format:%cs v6.$i)
    prev_date_sec=$(date -d "$prev_date"  '+%s')
    curr_date_sec=$(date -d "$curr_date"  '+%s')
    d=$(expr $curr_date_sec - $prev_date_sec)
    sec=86400
    duration=$(($d / $sec))
    echo "$duration"
done  