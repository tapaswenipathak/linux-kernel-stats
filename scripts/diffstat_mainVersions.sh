# !/bin/bash

# Displays diffstat b/w main releases of linux kernel
# (missing versions: ``` v0.95, v0.96 ```)
# Contributor: kavita23meena.2002@gmail.com

SRCDIR_a=~/archive
cd $SRCDIR_a

for ((i=1; i<=3; i++)); do
    diffstat=$(git diff --shortstat ${versions[$(($i-1))]}..${versions[$i]})
    echo -ne "${versions[$(($i-1))]}..${versions[$i]}\t" 
    echo "$diffstat"
done

for ((i=8;i<=9;i++)) ; do
    diffstat=$(git diff --shortstat "v0.9$(($i-1))..v0.9$i")
    echo -ne "v0.9$(($i-1))..v0.9$i\t"
    echo "$diffstat"
done

diffstat=$(git diff --shortstat "v0.99..v1.0")
echo -ne "v0.99..v1.0\t"
echo "$diffstat"


SRCDIR_b=~/erofs-utils
cd $SRCDIR_b

for ((i=1; i<6; i++)); do
    diffstat=$(git diff --shortstat v1.$(($i-1))..v1.$i)
    echo -ne "v1.$(($i-1))..v1.$i\t"
    echo "$diffstat"
done


SRCDIR_c=~/kbd
cd $SRCDIR_c

diffstat=$(git diff --shortstat "v2.0..v2.1.0")
echo -ne "v2.0..v2.1.0\t"
echo $diffstat

for ((i=2; i<6; i++)); do
    diffstat=$(git diff --shortstat "v2.$(($i-1)).0..v2.$i.0")
    echo -ne "v2.$(($i-1)).0..v2.$i.0\t"
    echo $diffstat
done


SRCDIR_d=~/history
cd $SRCDIR_d

diffstat=$(git diff --shortstat "v2.5.0..v2.6.0")
echo -ne "v2.5.0..v2.6.0\t"
echo $diffstat


SRCDIR_e=~/linux-stable/linux-stable
cd $SRCDIR_e

for ((i=12;i<=39;i++)) ; do
    diffstat=$(git diff --shortstat v2.6.$(($i-1))..v2.6.$i)
    echo -ne "v2.6.$(($i-1))..v2.6.$i\t"
    echo "$diffstat"
done

diffstat=$(git diff --shortstat v2.6.39..v3.0)
echo -ne "v2.6.39..v3.0\t"
echo "$diffstat"

for ((i=1;i<=19;i++)) ; do
    diffstat=$(git diff --shortstat v3.$(($i-1))..v3.$i)
    echo -ne "v3.$(($i-1))..v3.$i\t"
    echo "$diffstat"
done

diffstat=$(git diff --shortstat v3.19..v4.0)
echo -ne "v3.19..v4.0\t"
echo "$diffstat"

for ((i=1;i<=20;i++)) ; do
    diffstat=$(git diff --shortstat v4.$(($i-1))..v4.$i)
    echo -ne "v4.$(($i-1))..v4.$i\t"
    echo "$diffstat"
done

diffstat=$(git diff --shortstat v4.20..v5.0)
echo -ne "v4.20..v5.0\t"
echo "$diffstat"

for ((i=1;i<=19;i++)) ; do
    diffstat=$(git diff --shortstat v5.$(($i-1))..v5.$i)
    echo -ne "v5.$(($i-1))..v5.$i\t"
    echo "$diffstat"
done

diffstat=$(git diff --shortstat v5.19..v6.0)
echo -ne "v5.19..v6.0\t"
echo "$diffstat"

for ((i=1;i<2;i++)) ; do
    diffstat=$(git diff --shortstat v6.$(($i-1))..v6.$i)
    echo -ne "v6.$(($i-1))..v6.$i\t"
    echo "$diffstat"
done
