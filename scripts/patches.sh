#!/bin/bash

SRCDIR_A=~/linux-stable/linux-stable

cd $SRCDIR_A


# v2.6.12
echo v2.6.11..v2.6.12
git log --oneline v2.6.11..v2.6.12| wc -l

  
# 2.6.12-rc versions
for ((i=3; i<=6; i++)); do
    echo v2.6.12-rc$(($i-1))..v2.6.12-rc$i
    git log --oneline v2.6.12-rc$(($i-1))..v2.6.12-rc$i| wc -l
done

echo v2.6.12-rc6..v2.6.12.1
git log --oneline v2.6.12-rc6..v2.6.12.1| wc -l

# v2.6.12.1 to v2.6.12.6
for ((i=2; i<=6; i++)); do
    echo v2.6.12.$(($i-1))..v2.6.12.$i
    git log --oneline v2.6.12.$(($i-1))..v2.6.12.$i| wc -l
done


# v2.6.13
echo v2.6.12.6..v2.6.13
git log --oneline v2.6.12.6..v2.6.13| wc -l

# 2.6.13-rc versions
for ((i=2; i<=7; i++)); do
    echo v2.6.13-rc$(($i-1))..v2.6.13-rc$i
    git log --oneline v2.6.13-rc$(($i-1))..v2.6.13-rc$i| wc -l
done

echo v2.6.13-rc7..v2.6.13.1
git log --oneline v2.6.13-rc7..v2.6.13.1| wc -l

# v2.6.13.1 to v2.6.13.5
for ((i=2; i<=5; i++)); do
    echo v2.6.13.$(($i-1))..v2.6.13.$i
    git log --oneline v2.6.13.$(($i-1))..v2.6.13.$i| wc -l
    
done

# v2.6.14
echo v2.6.13.5..v2.6.14
git log --oneline v2.6.13.5..v2.6.14| wc -l

# 2.6.14-rc versions
for ((i=2; i<=5; i++)); do
    echo v2.6.14-rc$(($i-1))..v2.6.14-rc$i
    git log --oneline v2.6.14-rc$(($i-1))..v2.6.14-rc$i| wc -l
done

echo v2.6.14-rc5..v2.6.14.1
git log --oneline v2.6.14-rc5..v2.6.14.1| wc -l 

# v2.6.14.1 to v2.6.14.7
for ((i=2; i<=7; i++)); do
    echo v2.6.14.$(($i-1))..v2.6.14.$i
    git log --oneline v2.6.14.$(($i-1))..v2.6.14.$i| wc -l
done

# v2.6.15
echo v2.6.14.7..v2.6.15
git log --oneline v2.6.14.7..v2.6.15| wc -l

# 2.6.15-rc versions
for ((i=2; i<=6; i++)); do
    echo v2.6.15-rc$(($i-1))..v2.6.15-rc$i
    git log --oneline v2.6.15-rc$(($i-1))..v2.6.15-rc$i| wc -l
done

echo v2.6.15-rc6..v2.6.15.1
git log --oneline v2.6.15-rc6..v2.6.15.1| wc -l

# v2.6.15.1 to v2.6.15.7
for ((i=2; i<=7; i++)); do
    echo v2.6.15.$(($i-1))..v2.6.15.$i
    git log --oneline v2.6.15.$(($i-1))..v2.6.15.$i| wc -l
done

# v2.6.16
echo v2.6.15.5..v2.6.16
git log --oneline v2.6.15.5..v2.6.16| wc -l

# 2.6.16-rc versions
for ((i=3; i<=6; i++)); do
    echo v2.6.16-rc$(($i-1))..v2.6.16-rc$i
    git log --oneline v2.6.16-rc$(($i-1))..v2.6.16-rc$i| wc -l
done

echo v2.6.16-rc6..v2.6.16.1
git log --oneline v2.6.16-rc6..v2.6.16.1| wc -l

# v2.6.16.1 to v2.6.16.28
for ((i=2; i<=62; i++)); do
    echo v2.6.16.$(($i-1))..v2.6.16.$i
    git log --oneline v2.6.16.$(($i-1))..v2.6.16.$i| wc -l
done
###############################################
# for ((i=28; i<=62; i++)); do
#     for tbl in $(git tag -l| grep v2.6.16.$i); do
#         echo $tbl
#         git checkout -fq $tbl
#         find -type f -name '*.[chS]' -exec wc -l {} \;| awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
#     done
# done

# v2.6.17
echo v2.6.16.62..v2.6.17
git log --oneline v2.6.16.62..v2.6.17| wc -l

# 2.6.17-rc versions
for ((i=2; i<=6; i++)); do
    echo v2.6.17-rc$(($i-1))..v2.6.17-rc$i
    git log --oneline v2.6.17-rc$(($i-1))..v2.6.17-rc$i| wc -l
done

echo v2.6.17-rc6..v2.6.17.1
git log --oneline v2.6.17-rc6..v2.6.17.1| wc -l

# v2.6.17.1 to v2.6.17.14
for ((i=2; i<=14; i++)); do
    echo v2.6.17.$(($i-1))..v2.6.17.$i
    git log --oneline v2.6.17.$(($i-1))..v2.6.17.$i| wc -l
done

# v2.6.18
echo v2.6.17.14..v2.6.18
git log --oneline v2.6.17.14..v2.6.18| wc -l

# 2.6.18-rc versions
for ((i=2; i<=7; i++)); do
    echo v2.6.18-rc$(($i-1))..v2.6.18-rc$i
    git log --oneline v2.6.18-rc$(($i-1))..v2.6.18-rc$i| wc -l
done

echo v2.6.18-rc7..v2.6.18.1
git log --oneline v2.6.18-rc7..v2.6.18.1| wc -l

# v2.6.18.1 to v2.6.18.8
for ((i=2; i<=8; i++)); do
    echo v2.6.18.$(($i-1))..v2.6.18.$i
    git log --oneline v2.6.18.$(($i-1))..v2.6.18.$i| wc -l
done

# v2.6.19
echo v2.6.18.8..v2.6.19
git log --oneline v2.6.18.8..v2.6.19| wc -l

# 2.6.19-rc versions
for ((i=2; i<=6; i++)); do
    echo v2.6.19-rc$(($i-1))..v2.6.19-rc$i
    git log --oneline v2.6.19-rc$(($i-1))..v2.6.19-rc$i| wc -l
done

echo v2.6.19-rc6..v2.6.19.1
git log --oneline v2.6.19-rc6..v2.6.19.1| wc -l

# v2.6.19.1 to v2.6.19.7
for ((i=2; i<=7; i++)); do
   echo v2.6.19.$(($i-1))..v2.6.19.$i
    git log --oneline v2.6.19.$(($i-1))..v2.6.19.$i| wc -l
done

# v2.6.20
echo v2.6.19.7..v2.6.20
git log --oneline v2.6.19.7..v2.6.20| wc -l

# 2.6.20-rc versions
for ((i=2; i<=7; i++)); do
    echo v2.6.20-rc$(($i-1))..v2.6.20-rc$i
    git log --oneline v2.6.20-rc$(($i-1))..v2.6.20-rc$i| wc -l
done

echo v2.6.20-rc7..v2.6.20.1
git log --oneline v2.6.20-rc7..v2.6.20.1| wc -l

# v2.6.20.1 to v2.6.20.21
for ((i=2; i<=21; i++)); do
    echo v2.6.20.$(($i-1))..v2.6.20.$i
    git log --oneline v2.6.20.$(($i-1))..v2.6.20.$i| wc -l
done

# v2.6.21
echo v2.6.20.21..v2.6.21
git log --oneline v2.6.20.21..v2.6.21| wc -l

# 2.6.21-rc versions
for ((i=2; i<=7; i++)); do
    echo v2.6.21-rc$(($i-1))..v2.6.21-rc$i
    git log --oneline v2.6.21-rc$(($i-1))..v2.6.21-rc$i| wc -l
done

echo v2.6.21-rc7..v2.6.21.1
git log --oneline v2.6.21-rc7..v2.6.21.1| wc -l

# v2.6.21.1 to v2.6.21.7
for ((i=2; i<=7; i++)); do
    echo v2.6.21.$(($i-1))..v2.6.21.$i
    git log --oneline v2.6.21.$(($i-1))..v2.6.21.$i| wc -l
done

# v2.6.22
echo v2.6.21.7..v2.6.22
git log --oneline v2.6.21.7..v2.6.22| wc -l

# 2.6.22-rc versions
for ((i=2; i<=7; i++)); do
    echo v2.6.22-rc$(($i-1))..v2.6.22-rc$i
    git log --oneline v2.6.22-rc$(($i-1))..v2.6.22-rc$i| wc -l
done

echo v2.6.22-rc7..v2.6.22.1
git log --oneline v2.6.22-rc7..v2.6.22.1| wc -l

# v2.6.22.1 to v2.6.22.19
for ((i=2; i<=19; i++)); do
    echo v2.6.22.$(($i-1))..v2.6.22.$i
    git log --oneline v2.6.22.$(($i-1))..v2.6.22.$i| wc -l
done

# v2.6.23
echo v2.6.22.19..v2.6.23
    git log --oneline v2.6.22.19..v2.6.23| wc -l

# 2.6.23-rc versions
for ((i=2; i<=9; i++)); do
    echo v2.6.23-rc$(($i-1))..v2.6.23-rc$i
    git log --oneline v2.6.23-rc$(($i-1))..v2.6.23-rc$i| wc -l
done

echo v2.6.23-rc9..v2.6.23.1
git log --oneline v2.6.23-rc9..v2.6.23.1| wc -l

# v2.6.23.1 to v2.6.23.17
for ((i=2; i<=17; i++)); do
    echo v2.6.23.$(($i-1))..v2.6.23.$i
    git log --oneline v2.6.23.$(($i-1))..v2.6.23.$i| wc -l
done

# v2.6.24
echo v2.6.23.17..v2.6.24
git log --oneline v2.6.23.17..v2.6.24| wc -l

# 2.6.24-rc versions
for ((i=2; i<=8; i++)); do
    echo v2.6.24-rc$(($i-1))..v2.6.24-rc$i
    git log --oneline v2.6.24-rc$(($i-1))..v2.6.24-rc$i| wc -l
done

echo v2.6.24-rc8..v2.6.24.1
git log --oneline v2.6.24-rc8..v2.6.24.1| wc -l

# v2.6.24.1 to v2.6.24.7
for ((i=2; i<=7; i++)); do
    echo v2.6.24.$(($i-1))..v2.6.24.$i
    git log --oneline v2.6.24.$(($i-1))..v2.6.24.$i| wc -l
done

# v2.6.25
echo v2.6.24.7..v2.6.25
    git log --oneline v2.6.24.7..v2.6.25| wc -l

# 2.6.25-rc versions
for ((i=2; i<=9; i++)); do
    echo v2.6.25-rc$(($i-1))..v2.6.25-rc$i
    git log --oneline v2.6.25-rc$(($i-1))..v2.6.25-rc$i| wc -l
done

echo v2.6.25-rc9..v2.6.25.1
git log --oneline v2.6.25-rc9..v2.6.25.1| wc -l

# v2.6.25.1 to v2.6.25.20
for ((i=2; i<=20; i++)); do
    echo v2.6.25.$(($i-1))..v2.6.25.$i
    git log --oneline v2.6.25.$(($i-1))..v2.6.25.$i| wc -l
done

# v2.6.26
echo v2.6.25.20..v2.6.26
    git log --oneline v2.6.25.20..v2.6.26| wc -l

# 2.6.26-rc versions
for ((i=2; i<=9; i++)); do
    echo v2.6.26-rc$(($i-1))..v2.6.26-rc$i
    git log --oneline v2.6.26-rc$(($i-1))..v2.6.26-rc$i| wc -l
done

echo v2.6.26-rc9..v2.6.26.1
git log --oneline v2.6.26-rc9..v2.6.26.1| wc -l

# v2.6.26.1 to v2.6.26.8
for ((i=2; i<=8; i++)); do
    echo v2.6.26.$(($i-1))..v2.6.26.$i
    git log --oneline v2.6.26.$(($i-1))..v2.6.26.$i| wc -l
done

# v2.6.27
echo v2.6.26.8..v2.6.27
git log --oneline v2.6.26.8..v2.6.27| wc -l

# 2.6.27-rc versions
for ((i=2; i<=9; i++)); do
    echo v2.6.27-rc$(($i-1))..v2.6.27-rc$i
    git log --oneline v2.6.27-rc$(($i-1))..v2.6.27-rc$i| wc -l
done

echo v2.6.27-rc9..v2.6.27.1
git log --oneline v2.6.27-rc9..v2.6.27.1| wc -l

# v2.6.27.1 to v2.6.27.62
for ((i=2; i<=62; i++)); do
    echo v2.6.27.$(($i-1))..v2.6.27.$i
    git log --oneline v2.6.27.$(($i-1))..v2.6.27.$i| wc -l
done

# v2.6.28
echo v2.6.27.62..v2.6.28
    git log --oneline v2.6.27.62..v2.6.28| wc -l

# 2.6.28-rc versions
for ((i=2; i<=9; i++)); do
    echo v2.6.28-rc$(($i-1))..v2.6.28-rc$i
    git log --oneline v2.6.28-rc$(($i-1))..v2.6.28-rc$i| wc -l
done

echo v2.6.28-rc6..v2.6.28.1
git log --oneline v2.6.28-rc9..v2.6.28.1| wc -l

# v2.6.28.1 to v2.6.28.10
for ((i=2; i<=10; i++)); do
    echo v2.6.28.$(($i-1))..v2.6.28.$i
    git log --oneline v2.6.28.$(($i-1))..v2.6.28.$i| wc -l
done

# v2.6.29
echo v2.6.28.10..v2.6.29
git log --oneline v2.6.28.10..v2.6.29| wc -l

# 2.6.29-rc versions
for ((i=2; i<=8; i++)); do
    echo v2.6.29-rc$(($i-1))..v2.6.29-rc$i
    git log --oneline v2.6.29-rc$(($i-1))..v2.6.29-rc$i| wc -l
done

echo v2.6.29-rc8..v2.6.29.1
git log --oneline v2.6.29-rc8..v2.6.29.1| wc -l

# v2.6.29.1 to v2.6.29.6
for ((i=2; i<=6; i++)); do
    echo v2.6.29.$(($i-1))..v2.6.29.$i
    git log --oneline v2.6.29.$(($i-1))..v2.6.29.$i| wc -l
done

# v2.6.30
echo v2.6.29.6..v2.6.30
    git log --oneline v2.6.29.6..v2.6.30| wc -l

# 2.6.30-rc versions
for ((i=2; i<=8; i++)); do
    echo v2.6.30-rc$(($i-1))..v2.6.30-rc$i
    git log --oneline v2.6.30-rc$(($i-1))..v2.6.30-rc$i| wc -l
done

echo v2.6.30-rc8..v2.6.30.1
git log --oneline v2.6.30-rc8..v2.6.30.1| wc -l

# v2.6.30.1 to v2.6.30.10
for ((i=2; i<=10; i++)); do
    echo v2.6.30.$(($i-1))..v2.6.30.$i
    git log --oneline v2.6.30.$(($i-1))..v2.6.30.$i| wc -l
done

# v2.6.31
echo v2.6.30.10..v2.6.31
git log --oneline v2.6.30.10..v2.6.31| wc -l

# 2.6.31-rc versions
for ((i=2; i<=9; i++)); do
    echo v2.6.31-rc$(($i-1))..v2.6.31-rc$i
    git log --oneline v2.6.31-rc$(($i-1))..v2.6.31-rc$i| wc -l
done

echo v2.6.31-rc9..v2.6.31.1
git log --oneline v2.6.31-rc9..v2.6.31.1| wc -l

# v2.6.31.1 to v2.6.31.14
for ((i=2; i<=14; i++)); do
    echo v2.6.31.$(($i-1))..v2.6.31.$i
    git log --oneline v2.6.31.$(($i-1))..v2.6.31.$i| wc -l
done

# v2.6.32
echo v2.6.31.14..v2.6.32
git log --oneline v2.6.31.14..v2.6.32| wc -l
 
# 2.6.32-rc versions
for ((i=2; i<=8; i++)); do
    echo v2.6.32-rc$(($i-1))..v2.6.32-rc$i
    git log --oneline v2.6.32-rc$(($i-1))..v2.6.32-rc$i| wc -l
done

echo v2.6.32-rc8..v2.6.32.1
git log --oneline v2.6.32-rc8..v2.6.32.1| wc -l

# v2.6.32.1 to v2.6.32.71
for ((i=2; i<=71; i++)); do
    echo v2.6.32.$(($i-1))..v2.6.32.$i
    git log --oneline v2.6.32.$(($i-1))..v2.6.32.$i| wc -l
done

# v2.6.33
echo v2.6.32.71..v2.6.33
git log --oneline v2.6.32.71..v2.6.33| wc -l

# 2.6.33-rc versions
for ((i=2; i<=8; i++)); do
    echo v2.6.33-rc$(($i-1))..v2.6.33-rc$i
    git log --oneline v2.6.33-rc$(($i-1))..v2.6.33-rc$i| wc -l
done

echo v2.6.33-rc8..v2.6.33.1
git log --oneline v2.6.33-rc8..v2.6.33.1| wc -l

# v2.6.33.1 to v2.6.33.20
for ((i=2; i<=20; i++)); do
    echo v2.6.33.$(($i-1))..v2.6.33.$i
    git log --oneline v2.6.33.$(($i-1))..v2.6.33.$i| wc -l
done

# v2.6.34
echo v2.6.33.20..v2.6.34
git log --oneline v2.6.33.20..v2.6.34| wc -l

# 2.6.34-rc versions
for ((i=2; i<=7; i++)); do
    echo v2.6.34-rc$(($i-1))..v2.6.34-rc$i
    git log --oneline v2.6.34-rc$(($i-1))..v2.6.34-rc$i| wc -l
done

echo v2.6.34-rc7..v2.6.34.1
git log --oneline v2.6.34-rc7..v2.6.34.1| wc -l

# v2.6.34.1 to v2.6.34.15
for ((i=2; i<=15; i++)); do
    echo v2.6.34.$(($i-1))..v2.6.34.$i
    git log --oneline v2.6.34.$(($i-1))..v2.6.34.$i| wc -l
done

# v2.6.35
echo v2.6.34.15..v2.6.35
git log --oneline v2.6.34.15..v2.6.35| wc -l

# 2.6.35-rc versions
for ((i=2; i<=6; i++)); do
    echo v2.6.35-rc$(($i-1))..v2.6.35-rc$i
    git log --oneline v2.6.35-rc$(($i-1))..v2.6.35-rc$i| wc -l
done

echo v2.6.35-rc6..v2.6.35.1
git log --oneline v2.6.35-rc6..v2.6.35.1| wc -l

# v2.6.35.1 to v2.6.35.14
for ((i=2; i<=14; i++)); do
    echo v2.6.35.$(($i-1))..v2.6.35.$i
    git log --oneline v2.6.35.$(($i-1))..v2.6.35.$i| wc -l
done

# v2.6.36
echo v2.6.35.14..v2.6.36
    git log --oneline v2.6.35.14..v2.6.36| wc -l
 
# 2.6.36-rc versions
for ((i=2; i<=8; i++)); do
    echo v2.6.36-rc$(($i-1))..v2.6.36-rc$i
    git log --oneline v2.6.36-rc$(($i-1))..v2.6.36-rc$i| wc -l
done

echo v2.6.36-rc8..v2.6.36.1
git log --oneline v2.6.36-rc8..v2.6.36.1| wc -l

# v2.6.36.1 to v2.6.36.4
for ((i=2; i<=4; i++)); do
    echo v2.6.36.$(($i-1))..v2.6.36.$i
    git log --oneline v2.6.36.$(($i-1))..v2.6.36.$i| wc -l
done

# v2.6.37
echo v2.6.36.4..v2.6.37
    git log --oneline v2.6.36.4..v2.6.37| wc -l
 
# 2.6.37-rc versions
for ((i=2; i<=8; i++)); do
    echo v2.6.37-rc$(($i-1))..v2.6.37-rc$i
    git log --oneline v2.6.37-rc$(($i-1))..v2.6.37-rc$i| wc -l
done

echo v2.6.37-rc8..v2.6.37.1
git log --oneline v2.6.37-rc8..v2.6.37.1| wc -l

# v2.6.37.1 to v2.6.37.6
for ((i=2; i<=6; i++)); do
    echo v2.6.37.$(($i-1))..v2.6.37.$i
    git log --oneline v2.6.37.$(($i-1))..v2.6.37.$i| wc -l
done

# v2.6.38
echo v2.6.37.6..v2.6.38
git log --oneline v2.6.37.6..v2.6.38| wc -l
 
# 2.6.38-rc versions
for ((i=2; i<=8; i++)); do
    echo v2.6.38-rc$(($i-1))..v2.6.38-rc$i
    git log --oneline v2.6.38-rc$(($i-1))..v2.6.38-rc$i| wc -l
done

echo v2.6.38-rc8..v2.6.38.1
git log --oneline v2.6.38-rc8..v2.6.38.1| wc -l

# v2.6.38.1 to v2.6.38.8
for ((i=2; i<=8; i++)); do
    echo v2.6.38.$(($i-1))..v2.6.38.$i
    git log --oneline v2.6.38.$(($i-1))..v2.6.38.$i| wc -l
done

# v2.6.39
echo v2.6.38.8..v2.6.39
git log --oneline v2.6.38.8..v2.6.39| wc -l

# 2.6.39-rc versions
for ((i=2; i<=7; i++)); do
    echo v2.6.39-rc$(($i-1))..v2.6.39-rc$i
    git log --oneline v2.6.39-rc$(($i-1))..v2.6.39-rc$i| wc -l
done

echo v2.6.39-rc7..v2.6.39.1
git log --oneline v2.6.39-rc7..v2.6.39.1| wc -l

# v2.6.39.1 to v2.6.39.4
for ((i=2; i<=4; i++)); do
    echo v2.6.39.$(($i-1))..v2.6.39.$i
    git log --oneline v2.6.39.$(($i-1))..v2.6.39.$i| wc -l
done

# v3.0
echo v2.6.39.4..v3.0
git log --oneline v2.6.39.4..v3.0| wc -l

# 3.0-rc versions
for ((i=2; i<=7; i++)); do
    echo v3.0-rc$(($i-1))..v3.0-rc$i
    git log --oneline v3.0-rc$(($i-1))..v3.0-rc$i| wc -l
done

echo v3.0-rc7..v3.0.1
git log --oneline v3.0-rc7..v3.0.1| wc -l

# v3.0.1 to v3.0.101
for ((i=2; i<=101; i++)); do
    echo v3.0.$(($i-1))..v3.0.$i
    git log --oneline v3.0.$(($i-1))..v3.0.$i| wc -l
done

# v3.1
echo v3.0.101..v3.1
git log --oneline v3.0.101..v3.1| wc -l

# 3.1-rc versions
for ((i=2; i<=10; i++)); do
    echo v3.1-rc$(($i-1))..v3.1-rc$i
    git log --oneline v3.1-rc$(($i-1))..v3.1-rc$i| wc -l
done

echo v3.1-rc10..v3.1.1
git log --oneline v3.1-rc10..v3.1.1| wc -l

# v3.1.1 to v3.1.10
for ((i=2; i<=10; i++)); do
    echo v3.1.$(($i-1))..v3.1.$i
    git log --oneline v3.1.$(($i-1))..v3.1.$i| wc -l
done

# v3.2
echo v3.1.10..v3.2
git log --oneline v3.1.10..v3.2| wc -l

# 3.2-rc versions
for ((i=2; i<=7; i++)); do
    echo v3.2-rc$(($i-1))..v3.2-rc$i
    git log --oneline v3.2-rc$(($i-1))..v3.2-rc$i| wc -l
done

echo v3.2-rc7..v3.2.1
git log --oneline v3.2-rc7..v3.1.1| wc -l

# v3.2.1 to v3.2.102
for ((i=2; i<=102; i++)); do
   echo v3.2.$(($i-1))..v3.2.$i
    git log --oneline v3.2.$(($i-1))..v3.2.$i| wc -l
done

# v3.3
echo v3.2.102..v3.3
git log --oneline v3.2.102..v3.3| wc -l

# 3.3-rc versions
for ((i=2; i<=7; i++)); do
    echo v3.3-rc$(($i-1))..v3.3-rc$i
    git log --oneline v3.3-rc$(($i-1))..v3.3-rc$i| wc -l
done

echo v3.3-rc7..v3.3.1
git log --oneline v3.3-rc7..v3.3.1| wc -l

# v3.3.1 to v3.3.8
for ((i=2; i<=8; i++)); do
    echo v3.3.$(($i-1))..v3.3.$i
    git log --oneline v3.3.$(($i-1))..v3.3.$i| wc -l
done

# v3.4
echo v3.3.8..v3.4
git log --oneline v3.3.8..v3.4| wc -l

# 3.4-rc versions
for ((i=2; i<=7; i++)); do
    echo v3.4-rc$(($i-1))..v3.4-rc$i
    git log --oneline v3.4-rc$(($i-1))..v3.4-rc$i| wc -l
done

echo v3.4-rc7..v3.4.1
git log --oneline v3.4-rc7..v3.4.1| wc -l

# v3.4.1 to v3.4.113
for ((i=2; i<=113; i++)); do
    echo v3.4.$(($i-1))..v3.4.$i
    git log --oneline v3.4.$(($i-1))..v3.4.$i| wc -l
done

# v3.5
echo v3.4.113..v3.5
git log --oneline v3.4.113..v3.5| wc -l

# 3.5-rc versions
for ((i=2; i<=7; i++)); do
    echo v3.5-rc$(($i-1))..v3.5-rc$i
    git log --oneline v3.5-rc$(($i-1))..v3.5-rc$i| wc -l
done

echo v3.5-rc7..v3.5.1
git log --oneline v3.5-rc7..v3.5.1| wc -l

# v3.5.1 to v3.5.7
for ((i=2; i<=7; i++)); do
    echo v3.5.$(($i-1))..v3.5.$i
    git log --oneline v3.5.$(($i-1))..v3.5.$i| wc -l
done

# v3.6
echo v3.5.7..v3.6
git log --oneline v3.5.7..v3.6| wc -l

# 3.6-rc versions
for ((i=2; i<=6; i++)); do
    echo v3.6-rc$(($i-1))..v3..6-rc$i
    git log --oneline v3.6-rc$(($i-1))..v3.6-rc$i| wc -l
done

echo v3.6-rc6..v3.6.1
git log --oneline v3.6-rc6..v3.6.1| wc -l

# v3.6.1 to v3.6.11
for ((i=2; i<=11; i++)); do
    echo v3.6.$(($i-1))..v3.6.$i
    git log --oneline v3.6.$(($i-1))..v3.6.$i| wc -l
done

# v3.7
echo v3.6.11..v3.7
git log --oneline v3.6.11..v3.7| wc -l

# 3.7-rc versions
for ((i=2; i<=8; i++)); do
    echo v3.7-rc$(($i-1))..v3.7-rc$i
    git log --oneline v3.7-rc$(($i-1))..v3.7-rc$i| wc -l
done

echo v3.7-rc8..v3.7.1
git log --oneline v3.7-rc8..v3.7.1| wc -l

# v3.7.1 to v3.7.10
for ((i=2; i<=10; i++)); do
    echo v3.7.$(($i-1))..v3.7.$i
    git log --oneline v3.7.$(($i-1))..v3.7.$i| wc -l
done

# v3.8
echo v3.7.10..v3.8
git log --oneline v3.7.10..v3.8| wc -l

# 3.8-rc versions
for ((i=2; i<=7; i++)); do
    echo v3.8-rc$(($i-1))..v3.8-rc$i
    git log --oneline v3.8-rc$(($i-1))..v3.8-rc$i| wc -l
done

echo v3.8-rc7..v3.8.1
git log --oneline v3.8-rc7..v3.8.1| wc -l

# v3.8.1 to v3.8.13
for ((i=2; i<=13; i++)); do
    echo v3.8.$(($i-1))..v3.8.$i
    git log --oneline v3.8.$(($i-1))..v3.8.$i| wc -l
done

# v3.9
echo v3.8.13..v3.9
git log --oneline v3.8.13..v3.9| wc -l

# 3.9-rc versions
for ((i=2; i<=8; i++)); do
    echo v3.9-rc$(($i-1))..v3.9-rc$i
    git log --oneline v3.9-rc$(($i-1))..v3.9-rc$i| wc -l
done

echo v3.9-rc8..v3.9.1
git log --oneline v3.9-rc8..v3.9.1| wc -l

# v3.9.1 to v3.9.11
for ((i=2; i<=11; i++)); do
    echo v3.9.$(($i-1))..v3.9.$i
    git log --oneline v3.9.$(($i-1))..v3.9.$i| wc -l
done

# v3.10
echo v3.9.11..v3.10
git log --oneline v3.9.11..v3.10| wc -l

# 3.10-rc versions
for ((i=2; i<=7; i++)); do
    echo v3.10-rc$(($i-1))..v3.10-rc$i
    git log --oneline v3.10-rc$(($i-1))..v3.10-rc$i| wc -l
done

echo v3.10-rc7..v3.10.1
git log --oneline v3.10-rc7..v3.10.1| wc -l

# v3.10.1 to v3.0.108
for ((i=2; i<=108; i++)); do
    echo v3.10.$(($i-1))..v3.10.$i
    git log --oneline v3.10.$(($i-1))..v3.10.$i| wc -l
done

# v3.11
echo v3.10.108..v3.11
 git log --oneline v3.10.108..v3.11| wc -l

# 3.11-rc versions
for ((i=2; i<=6; i++)); do
    echo v3.11-rc$(($i-1))..v3.11-rc$i
    git log --oneline v3.11-rc$(($i-1))..v3.11-rc$i| wc -l
done

echo v3.11-rc6..v3.11.1
git log --oneline v3.11-rc6..v3.11.1| wc -l

# v3.11.1 to v3.11.10
for ((i=2; i<=10; i++)); do
    echo v3.11.$(($i-1))..v3.11.$i
    git log --oneline v3.11.$(($i-1))..v3.11.$i| wc -l
done

# v3.12
echo v3.11.10..v3.12
git log --oneline v3.11.10..v3.12| wc -l

# 3.12-rc versions
for ((i=2; i<=7; i++)); do
    echo v3.12-rc$(($i-1))..v3.12-rc$i
    git log --oneline v3.12-rc$(($i-1))..v3.12-rc$i| wc -l
done

echo v3.12-rc7..v3.12.1
git log --oneline v3.12-rc7..v3.12.1| wc -l

# v3.12.1 to v3.12.74
for ((i=2; i<=74; i++)); do
    echo v3.12.$(($i-1))..v3.12.$i
    git log --oneline v3.12.$(($i-1))..v3.12.$i| wc -l
done

# v3.13
echo v3.12.74..v3.13
git log --oneline v3.12.74..v3.13| wc -l

# 3.13-rc versions
for ((i=2; i<=8; i++)); do
    echo v3.13-rc$(($i-1))..v3.13-rc$i
    git log --oneline v3.13-rc$(($i-1))..v3.13-rc$i| wc -l
done

echo v3.13-rc8..v3.13.1
git log --oneline v3.13-rc8..v3.13.1| wc -l

# v3.13.1 to v3.13.11
for ((i=2; i<=11; i++)); do
    echo v3.13.$(($i-1))..v3.13.$i
    git log --oneline v3.13.$(($i-1))..v3.13.$i| wc -l
done

# v3.14
echo v3.13.11..v3.14
git log --oneline v3.13.11..v3.14| wc -l

# 3.14-rc versions
for ((i=2; i<=8; i++)); do
    echo v3.14-rc$(($i-1))..v3.14-rc$i
    git log --oneline v3.14-rc$(($i-1))..v3.14-rc$i| wc -l
done

echo v3.14-rc8..v3.14.1
git log --oneline v3.14-rc8..v3.14.1| wc -l

# v3.14.1 to v3.14.77
for ((i=2; i<=77; i++)); do
    echo v3.14.$(($i-1))..v3.14.$i
    git log --oneline v3.14.$(($i-1))..v3.14.$i| wc -l
done

# v3.15
echo v3.14.77..v3.15
git log --oneline v3.14.77..v3.15| wc -l

# 3.15-rc versions
for ((i=2; i<=8; i++)); do
    echo v3.15-rc$(($i-1))..v3.15-rc$i
    git log --oneline v3.15-rc$(($i-1))..v3.15-rc$i| wc -l
done

echo v3.15-rc8..v3.15.1
git log --oneline v3.15-rc8..v3.15.1| wc -l

# v3.15.1 to v3.15.10
for ((i=2; i<=10; i++)); do
    echo v3.15.$(($i-1))..v3.15.$i
    git log --oneline v3.15.$(($i-1))..v3.15.$i| wc -l
done

# v3.16
echo v3.15.10..v3.16
git log --oneline v3.15.10..v3.16| wc -l

# 3.16-rc versions
for ((i=2; i<=7; i++)); do
    echo v3.16-rc$(($i-1))..v3.16-rc$i
    git log --oneline v3.16-rc$(($i-1))..v3.16-rc$i| wc -l
done

echo v3.16-rc7..v3.16.1
git log --oneline v3.16-rc7..v3.16.1| wc -l

# v3.16.1 to v3.16.7
for ((i=2; i<=7; i++)); do
    echo v3.16.$(($i-1))..v3.16.$i
    git log --oneline v3.16.$(($i-1))..v3.16.$i| wc -l
done

# v3.17
echo v3.16.7..v3.17
git log --oneline v3.16.7..v3.17| wc -l

# 3.17-rc versions
for ((i=2; i<=7; i++)); do
    echo v3.17-rc$(($i-1))..v3.17-rc$i
    git log --oneline v3.17-rc$(($i-1))..v3.17-rc$i| wc -l
done

echo v3.17-rc7..v3.17.1
git log --oneline v3.17-rc7..v3.17.1| wc -l

# v3.17.1 to v3.17.8
for ((i=2; i<=8; i++)); do
    echo v3.17.$(($i-1))..v3.17.$i
    git log --oneline v3.17.$(($i-1))..v3.17.$i| wc -l
done

# v3.18
echo v3.17.8..v3.18
git log --oneline v3.17.8..v3.18| wc -l
 
# 3.18-rc versions
for ((i=2; i<=7; i++)); do
    echo v3.18-rc$(($i-1))..v3.18-rc$i
    git log --oneline v3.18-rc$(($i-1))..v3.18-rc$i| wc -l
done

echo v3.18-rc7..v3.18.1
git log --oneline v3.18-rc7..v3.18.1| wc -l

# v3.18.1 to v3.18.140
for ((i=2; i<=140; i++)); do
    echo v3.18.$(($i-1))..v3.18.$i
    git log --oneline v3.18.$(($i-1))..v3.18.$i| wc -l
done

# v3.19
echo v3.18.140..v3.19
git log --oneline v3.18.140..v3.19| wc -l

# 3.19-rc versions
for ((i=2; i<=7; i++)); do
    echo v3.19-rc$(($i-1))..v3.19-rc$i
    git log --oneline v3.19-rc$(($i-1))..v3.19-rc$i| wc -l
done

echo v3.19-rc7..v3.19.1
git log --oneline v3.19-rc7..v3.19.1| wc -l

# v3.19.1 to v3.19.8
for ((i=2; i<=8; i++)); do
    echo v3.19.$(($i-1))..v3.19.$i
    git log --oneline v3.19.$(($i-1))..v3.19.$i| wc -l
done

# v4.0
echo v3.19.8..v4.0
git log --oneline v3.19.8..v4.0| wc -l

# 4.0-rc versions
for ((i=2; i<=7; i++)); do
    echo v4.0-rc$(($i-1))..v4.0-rc$i
    git log --oneline v4.0-rc$(($i-1))..v4.0-rc$i| wc -l
done

echo v4.0-rc7..v4.0.1
git log --oneline v4.0-rc7..v4.0.1| wc -l

# v4.0.1 to v4.0.9
for ((i=2; i<=9; i++)); do
    echo v4.0.$(($i-1))..v4.0.$i
    git log --oneline v4.0.$(($i-1))..v4.0.$i| wc -l
done

# v4.1
echo v4.0.9..v4.1
git log --oneline v4.0.9..v4.1| wc -l

# 4.1-rc versions
for ((i=2; i<=8; i++)); do
    echo v4.1-rc$(($i-1))..v4.1-rc$i
    git log --oneline v4.1-rc$(($i-1))..v4.1-rc$i| wc -l
done

echo v4.1-rc8..v4.1.1
git log --oneline v4.1-rc8..v4.1.1| wc -l

# v4.1.1 to v4.1.52
for ((i=2; i<=52; i++)); do
    echo v4.1.$(($i-1))..v4.1.$i
    git log --oneline v4.1.$(($i-1))..v4.1.$i| wc -l
done

# v4.2
echo v4.1.52..v4.2
git log --oneline v4.1.52..v4.2| wc -l

# 4.2-rc versions
for ((i=2; i<=8; i++)); do
    echo v4.2-rc$(($i-1))..v4.2-rc$i
    git log --oneline v4.2-rc$(($i-1))..v4.2-rc$i| wc -l
done

echo v4.2-rc8..v4.2.1
git log --oneline v4.2-rc8..v4.2.1| wc -l

# v4.2.1 to v4.2.8
for ((i=2; i<=8; i++)); do
    echo v4.2.$(($i-1))..v4.2.$i
    git log --oneline v4.2.$(($i-1))..v4.2.$i| wc -l
done

# v4.3
echo v4.2.8..v4.3
git log --oneline v4.2.8..v4.3| wc -l

# 4.3-rc versions
for ((i=2; i<=7; i++)); do
    echo v4.3-rc$(($i-1))..v4.3-rc$i
    git log --oneline v4.3-rc$(($i-1))..v4.3-rc$i| wc -l
done

echo v4.3-rc7..v4.3.1
git log --oneline v4.3-rc7..v4.3.1| wc -l

# v4.3.1 to v4.3.6
for ((i=2; i<=6; i++)); do
    echo v4.3.$(($i-1))..v4.3.$i
    git log --oneline v4.3.$(($i-1))..v4.3.$i| wc -l
done

# v4.4
echo v4.3.6..v4.4
git log --oneline v4.3.6..v4.4| wc -l

# 4.4-rc versions
for ((i=2; i<=8; i++)); do
    echo v4.4-rc$(($i-1))..v4.4-rc$i
    git log --oneline v4.4-rc$(($i-1))..v4.4-rc$i| wc -l
done

echo v4.4-rc8..v4.4.1
git log --oneline v4.4-rc8..v4.4.1| wc -l

# v4.4.1 to v4.4.302
for ((i=2; i<=302; i++)); do
    echo v4.4.$(($i-1))..v4.4.$i
    git log --oneline v4.4.$(($i-1))..v4.4.$i| wc -l
done

# v4.5
echo v4.4.302..v4.5
git log --oneline v4.4.302..v4.5| wc -l

# 4.5-rc versions
for ((i=2; i<=7; i++)); do
    echo v4.5-rc$(($i-1))..v4.5-rc$i
    git log --oneline v4.5-rc$(($i-1))..v4.5-rc$i| wc -l
done

echo v4.5-rc7..v4.5.1
git log --oneline v4.5-rc7..v4.5.1| wc -l

# v4.5.1 to v4.5.7
for ((i=2; i<=7; i++)); do
    echo v4.5.$(($i-1))..v4.5.$i
    git log --oneline v4.5.$(($i-1))..v4.5.$i| wc -l
done

# v4.6
echo v4.5.7..v4.6
git log --oneline v4.5.7..v4.6| wc -l

# 4.6-rc versions
for ((i=2; i<=7; i++)); do
    echo v4.6-rc$(($i-1))..v4.6-rc$i
    git log --oneline v4.6-rc$(($i-1))..v4.6-rc$i| wc -l
done

echo v4.6-rc7..v4.6.1
git log --oneline v4.6-rc7..v4.6.1| wc -l

# v4.6.1 to v4.6.7
for ((i=2; i<=7; i++)); do
    echo v4.6.$(($i-1))..v4.6.$i
    git log --oneline v4.6.$(($i-1))..v4.6.$i| wc -l
done

# v4.7
echo v4.6.7..v4.7
git log --oneline v4.6.7..v4.7| wc -l

# 4.7-rc versions
for ((i=2; i<=7; i++)); do
    echo v4.7-rc$(($i-1))..v4.7-rc$i
    git log --oneline v4.7-rc$(($i-1))..v4.7-rc$i| wc -l
done

echo v4.7-rc7..v4.7.1
git log --oneline v4.7-rc7..v4.7.1| wc -l

# v4.7.1 to v4.7.10
for ((i=2; i<=10; i++)); do
    echo v4.7.$(($i-1))..v4.7.$i
    git log --oneline v4.7.$(($i-1))..v4.7.$i| wc -l
done

# v4.8
echo v4.7.10..v4.8
git log --oneline v4.7.10..v4.8| wc -l

# 4.8-rc versions
for ((i=2; i<=7; i++)); do
    echo v4.8-rc$(($i-1))..v4.8-rc$i
    git log --oneline v4.8-rc$(($i-1))..v4.8-rc$i| wc -l
done

echo v4.8-rc7..v4.8.1
git log --oneline v4.8-rc7..v4.8.1| wc -l

# v4.8.1 to v4.8.17
for ((i=2; i<=17; i++)); do
    echo v4.8.$(($i-1))..v4.8.$i
    git log --oneline v4.8.$(($i-1))..v4.8.$i| wc -l
done

# v4.9
echo v4.8.17..v4.9
git log --oneline v4.8.17..v4.9| wc -l

# 4.9-rc versions
for ((i=2; i<=8; i++)); do
    echo v4.9-rc$(($i-1))..v4.9-rc$i
    git log --oneline v4.9-rc$(($i-1))..v4.9-rc$i| wc -l
done

echo v4.9-rc8..v4.9.1
git log --oneline v4.9-rc8..v4.9.1| wc -l

# v4.9.1 to v4.9.332
for ((i=2; i<=332; i++)); do
    echo v4.9.$(($i-1))..v4.9.$i
    git log --oneline v4.9.$(($i-1))..v4.9.$i| wc -l
done

# v4.10
echo v4.9.332..v4.10
git log --oneline v4.9.332..v4.10| wc -l

# 4.10-rc versions
for ((i=2; i<=8; i++)); do
    echo v4.10-rc$(($i-1))..v4.10-rc$i
    git log --oneline v4.10-rc$(($i-1))..v4.10-rc$i| wc -l
done

echo v4.10-rc8..v4.10.1
git log --oneline v4.10-rc8..v4.10.1| wc -l

# v4.10.1 to v4.10.17
for ((i=2; i<=17; i++)); do
    echo v4.10.$(($i-1))..v4.10.$i
    git log --oneline v4.10.$(($i-1))..v4.10.$i| wc -l
done

# v4.11
echo v4.10.17..v4.11
git log --oneline v4.10.17..v4.11| wc -l

# 4.11-rc versions
for ((i=2; i<=8; i++)); do
    echo v4.11-rc$(($i-1))..v4.11-rc$i
    git log --oneline v4.11-rc$(($i-1))..v4.11-rc$i| wc -l
done

echo v4.11-rc8..v4.11.1
git log --oneline v4.11-rc8..v4.11.1| wc -l

# v4.11.1 to v4.11.12
for ((i=2; i<=12; i++)); do
    echo v4.11.$(($i-1))..v4.11.$i
    git log --oneline v4.11.$(($i-1))..v4.11.$i| wc -l
done

# v4.12
echo v4.11.12..v4.12
git log --oneline v4.11.12..v4.12| wc -l
 
# 4.12-rc versions
for ((i=2; i<=7; i++)); do
    echo v4.12-rc$(($i-1))..v4.12-rc$i
    git log --oneline v4.12-rc$(($i-1))..v4.12-rc$i| wc -l
done

echo v4.12-rc7..v4.12.1
git log --oneline v4.12-rc7..v4.12.1| wc -l

# v4.12.1 to v4.12.14
for ((i=2; i<=14; i++)); do
    echo v4.12.$(($i-1))..v4.12.$i
    git log --oneline v4.12.$(($i-1))..v4.12.$i| wc -l
done

# v4.13
echo v4.12.14..v4.13
git log --oneline v4.12.14..v4.13| wc -l

# 4.13-rc versions
for ((i=2; i<=7; i++)); do
    echo v4.13-rc$(($i-1))..v4.13-rc$i
    git log --oneline v4.13-rc$(($i-1))..v4.13-rc$i| wc -l
done

echo v4.13-rc7..v4.13.1
git log --oneline v4.13-rc7..v4.13.1| wc -l

# v4.13.1 to v4.13.16
for ((i=2; i<=16; i++)); do
    echo v4.13.$(($i-1))..v4.13.$i
    git log --oneline v4.13.$(($i-1))..v4.13.$i| wc -l
done

# v4.14
echo v4.13.16..v4.14
git log --oneline v4.13.16..v4.14| wc -l

# 4.14-rc versions
for ((i=2; i<=8; i++)); do
    echo v4.14-rc$(($i-1))..v4.14-rc$i
    git log --oneline v4.14-rc$(($i-1))..v4.14-rc$i| wc -l
done

echo v4.14-rc8..v4.14.1
git log --oneline v4.14-rc8..v4.14.1| wc -l

# v4.14.1 to v4.14.298
for ((i=2; i<=298; i++)); do
    echo v4.14.$(($i-1))..v4.14.$i
    git log --oneline v4.14.$(($i-1))..v4.14.$i| wc -l
done

# v4.15
echo v4.14.298..v4.15
git log --oneline v4.14.298..v4.15| wc -l
 
# 4.15-rc versions
for ((i=2; i<=9; i++)); do
    echo v4.15-rc$(($i-1))..v4.15-rc$i
    git log --oneline v4.15-rc$(($i-1))..v4.15-rc$i| wc -l
done

echo v4.15-rc9..v4.15.1
git log --oneline v4.15-rc9..v4.15.1| wc -l

# v4.15.1 to v4.15.18
for ((i=2; i<=18; i++)); do
   echo v4.15.$(($i-1))..v4.15.$i
    git log --oneline v4.15.$(($i-1))..v4.15.$i| wc -l
done

# v4.16
echo v4.15.18..v4.16
git log --oneline v4.15.18..v4.16| wc -l
 
# 4.16-rc versions
for ((i=2; i<=7; i++)); do
    echo v4.16-rc$(($i-1))..v4.16-rc$i
    git log --oneline v4.16-rc$(($i-1))..v4.16-rc$i| wc -l
done

echo v4.16-rc7..v4.16.1
git log --oneline v4.16-rc7..v4.16.1| wc -l

# v4.16.1 to v4.16.18
for ((i=2; i<=18; i++)); do
    echo v4.16.$(($i-1))..v4.16.$i
    git log --oneline v4.16.$(($i-1))..v4.16.$i| wc -l
done

# v4.17
echo v4.16.18..v4.17
git log --oneline v4.16.18..v4.17| wc -l
 
# 4.17-rc versions
for ((i=2; i<=7; i++)); do
    echo v4.17-rc$(($i-1))..v4.17-rc$i
    git log --oneline v4.17-rc$(($i-1))..v4.17-rc$i| wc -l
done

echo v4.17-rc7..v4.17.1
git log --oneline v4.17-rc7..v4.17.1| wc -l

# v4.17.1 to v4.17.19
for ((i=2; i<=19; i++)); do
    echo v4.17.$(($i-1))..v4.17.$i
    git log --oneline v4.17.$(($i-1))..v4.17.$i| wc -l
done

# v4.18
echo v4.17.19..v4.18
git log --oneline v4.17.19..v4.18| wc -l

# 4.18-rc versions
for ((i=2; i<=8; i++)); do
    echo v4.18-rc$(($i-1))..v4.18-rc$i
    git log --oneline v4.18-rc$(($i-1))..v4.18-rc$i| wc -l
done

echo v4.18-rc8..v4.18.1
git log --oneline v4.18-rc8..v4.18.1| wc -l

# v4.18.1 to v4.18.20
for ((i=2; i<=20; i++)); do
    echo v4.18.$(($i-1))..v4.18.$i
    git log --oneline v4.18.$(($i-1))..v4.18.$i| wc -l
done

# v4.19
echo v4.18.20..v4.19
git log --oneline v4.18.20..v4.19| wc -l

# 4.19-rc versions
for ((i=2; i<=8; i++)); do
    echo v4.19-rc$(($i-1))..v4.19-rc$i
    git log --oneline v4.19-rc$(($i-1))..v4.19-rc$i| wc -l
done

echo v4.19-rc8..v4.19.1
git log --oneline v4.19-rc8..v4.19.1| wc -l

# v4.19.1 to v4.19.264
for ((i=2; i<=264; i++)); do
    echo v4.19.$(($i-1))..v4.19.$i
    git log --oneline v4.19.$(($i-1))..v4.19.$i| wc -l
done

# v4.20
echo v4.19.264..v4.20
git log --oneline v4.19.264..v4.20| wc -l
 
# 4.20-rc versions
for ((i=2; i<=7; i++)); do
    echo v4.20-rc$(($i-1))..v4.20-rc$i
    git log --oneline v4.20-rc$(($i-1))..v4.20-rc$i| wc -l
done

echo v4.20-rc7..v4.20.1
git log --oneline v4.20-rc7..v4.20.1| wc -l

# v4.20.1 to v4.20.17
for ((i=2; i<=17; i++)); do
    echo v4.20.$(($i-1))..v4.20.$i
    git log --oneline v4.20.$(($i-1))..v4.20.$i| wc -l
done

# v5.0
echo v4.20.17..v5.0
git log --oneline v4.20.17..v5.0| wc -l

# 5.0-rc versions
for ((i=2; i<=8; i++)); do
    echo v5.0-rc$(($i-1))..v5.0-rc$i
    git log --oneline v5.0-rc$(($i-1))..v5.0-rc$i| wc -l
done

echo v5.0-rc8..v5.0.1
git log --oneline v5.0-rc8..v5.0.1| wc -l

# v5.0.1 to v5.0.21
for ((i=2; i<=21; i++)); do
    echo v5.0.$(($i-1))..v5.0.$i
    git log --oneline v5.0.$(($i-1))..v5.0.$i| wc -l
done

# v5.1
echo v5.0.21..v5.1
git log --oneline v5.0.21..v5.1| wc -l

# 5.1-rc versions
for ((i=2; i<=7; i++)); do
    echo v5.1-rc$(($i-1))..v5.1-rc$i
    git log --oneline v5.1-rc$(($i-1))..v5.1-rc$i| wc -l
done

echo v5.1-rc7..v5.1.1
git log --oneline v5.1-rc7..v5.1.1| wc -l


# v5.1.1 to v5.1.21
for ((i=2; i<=21; i++)); do
    echo v5.1.$(($i-1))..v5.1.$i
    git log --oneline v5.1.$(($i-1))..v5.1.$i| wc -l
done

# v5.2
echo v5.1.21..v5.2
git log --oneline v5.1.21..v5.2| wc -l

# 5.2-rc versions
for ((i=2; i<=7; i++)); do
    echo v5.2-rc$(($i-1))..v5.2-rc$i
    git log --oneline v5.2-rc$(($i-1))..v5.2-rc$i| wc -l
done

echo v5.2-rc7..v5.2.1
git log --oneline v5.2-rc7..v5.2.1| wc -l

# v5.2.1 to v5.2.21
for ((i=2; i<=21; i++)); do
    echo v5.2.$(($i-1))..v5.2.$i
    git log --oneline v5.2.$(($i-1))..v5.2.$i| wc -l
done

# v5.3
echo v5.2.21..v5.3
git log --oneline v5.2.21..v5.3| wc -l

# 5.3-rc versions
for ((i=2; i<=8; i++)); do
    echo v5.3-rc$(($i-1))..v5.3-rc$i
    git log --oneline v5.3-rc$(($i-1))..v5.3-rc$i| wc -l
done

echo v5.3-rc8..v5.3.1
git log --oneline v5.3-rc8..v5.3.1| wc -l

# v5.3.1 to v5.3.18
for ((i=2; i<=18; i++)); do
    echo v5.3.$(($i-1))..v5.3.$i
    git log --oneline v5.3.$(($i-1))..v5.3.$i| wc -l
done

# v5.4
echo v5.3.18..v5.4
git log --oneline v5.3.18..v5.4| wc -l

# 5.4-rc versions
for ((i=2; i<=8; i++)); do
    echo v5.4-rc$(($i-1))..v5.4-rc$i
    git log --oneline v5.4-rc$(($i-1))..v5.4-rc$i| wc -l
done

echo v5.4-rc8..v5.4.1
git log --oneline v5.4-rc8..v5.4.1| wc -l

# v5.4.1 to v5.4.223
for ((i=2; i<=223; i++)); do
    echo v5.4.$(($i-1))..v5.4.$i
    git log --oneline v5.4.$(($i-1))..v5.4.$i| wc -l
done

# v5.5
echo v5.4.223..v5.5
git log --oneline v5.4.223..v5.5| wc -l

# 5.5-rc versions
for ((i=2; i<=7; i++)); do
    echo v5.5-rc$(($i-1))..v5.5-rc$i
    git log --oneline v5.5-rc$(($i-1))..v5.5-rc$i| wc -l
done

echo v5.5-rc7..v5.5.1
git log --oneline v5.5-rc7..v5.5.1| wc -l

# v5.5.1 to v5.5.19
for ((i=2; i<=19; i++)); do
    echo v5.5.$(($i-1))..v5.5.$i
    git log --oneline v5.5.$(($i-1))..v5.5.$i| wc -l
done

# v5.6
echo v5.5.19..v5.6
git log --oneline v5.5.19..v5.6| wc -l

# 5.6-rc versions
for ((i=2; i<=7; i++)); do
    echo v5.6-rc$(($i-1))..v5.6-rc$i
    git log --oneline v5.6-rc$(($i-1))..v5.6-rc$i| wc -l
done

echo v5.6-rc7..v5.6.1
git log --oneline v5.6-rc7..v5.6.1| wc -l

# v5.6.1 to v5.6.19
for ((i=2; i<=19; i++)); do
    echo v5.6.$(($i-1))..v5.6.$i
    git log --oneline v5.6.$(($i-1))..v5.6.$i| wc -l
done

# v5.7
echo v5.6.19..v5.7
git log --oneline v5.6.19..v5.7| wc -l

# 5.7-rc versions
for ((i=2; i<=7; i++)); do
    echo v5.7-rc$(($i-1))..v5.7-rc$i
    git log --oneline v5.7-rc$(($i-1))..v5.7-rc$i| wc -l
done

echo v5.7-rc7..v5.7.1
git log --oneline v5.7-rc7..v5.7.1| wc -l

# v5.7.1 to v5.7.19
for ((i=2; i<=19; i++)); do
    echo v5.7.$(($i-1))..v5.7.$i
    git log --oneline v5.7.$(($i-1))..v5.7.$i| wc -l
done

# v5.8
echo v5.7.19..v5.8
git log --oneline v5.7.19..v5.8| wc -l

# 5.8-rc versions
for ((i=2; i<=7; i++)); do
    echo v5.8-rc$(($i-1))..v5.8-rc$i
    git log --oneline v5.8-rc$(($i-1))..v5.8-rc$i| wc -l
done

echo v5.8-rc7..v5.8.1
git log --oneline v5.8-rc7..v5.8.1| wc -l

# v5.8.1 to v5.8.18
for ((i=2; i<=18; i++)); do
    echo v5.8.$(($i-1))..v5.8.$i
    git log --oneline v5.8.$(($i-1))..v5.8.$i| wc -l
done

# v5.9
echo v5.8.18..v5.9
git log --oneline v5.8.18..v5.9| wc -l

# 5.9-rc versions
for ((i=2; i<=8; i++)); do
    echo v5.9-rc$(($i-1))..v5.9-rc$i
    git log --oneline v5.9-rc$(($i-1))..v5.9-rc$i| wc -l
done

echo v5.9-rc8..v5.9.1
git log --oneline v5.9-rc8..v5.9.1| wc -l

# v5.9.1 to v5.9.16
for ((i=2; i<=16; i++)); do
    echo v5.9.$(($i-1))..v5.9.$i
    git log --oneline v5.9.$(($i-1))..v5.9.$i| wc -l
done

# v5.10
echo v5.9.16..v5.10
git log --oneline v5.9.16..v5.10| wc -l

# 5.10-rc versions
for ((i=2; i<=7; i++)); do
    echo v5.10-rc$(($i-1))..v5.10-rc$i
    git log --oneline v5.10-rc$(($i-1))..v5.10-rc$i| wc -l
done

echo v5.10-rc7..v5.10.1
git log --oneline v5.10-rc7..v5.10.1| wc -l

# v5.10.1 to v5.10.153
for ((i=2; i<=153; i++)); do
    echo v5.10.$(($i-1))..v5.10.$i
    git log --oneline v5.10.$(($i-1))..v5.10.$i| wc -l
done

# v5.11
echo v5.10.153..v5.11
git log --oneline v5.10.153..v5.11| wc -l

# 5.11-rc versions
for ((i=2; i<=7; i++)); do
    echo v5.11-rc$(($i-1))..v5.11-rc$i
    git log --oneline v5.11-rc$(($i-1))..v5.11-rc$i| wc -l
done

echo v5.11-rc7..v5.11.1
git log --oneline v5.11-rc7..v5.11.1| wc -l

# v5.11.1 to v5.11.22
for ((i=2; i<=22; i++)); do
    echo v5.11.$(($i-1))..v5.11.$i
    git log --oneline v5.11.$(($i-1))..v5.11.$i| wc -l
done

# v5.12
echo v5.11.22..v5.12
git log --oneline v5.11.22..v5.12| wc -l

# 5.12-rc versions
for ((i=3; i<=8; i++)); do
    echo v5.12-rc$(($i-1))..v5.12-rc$i
    git log --oneline v5.12-rc$(($i-1))..v5.12-rc$i| wc -l
done

echo v5.12-rc8..v5.12.1
git log --oneline v5.12-rc8..v5.12.1| wc -l

# v5.12.1 to v5.12.19
for ((i=2; i<=19; i++)); do
    echo v5.12.$(($i-1))..v5.12.$i
    git log --oneline v5.12.$(($i-1))..v5.12.$i| wc -l
done

# v5.13
echo v5.12.19..v5.13
git log --oneline v5.12.19..v5.13| wc -l
 
# 5.13-rc versions
for ((i=2; i<=7; i++)); do
    echo v5.13-rc$(($i-1))..v5.13-rc$i
    git log --oneline v5.13-rc$(($i-1))..v5.13-rc$i| wc -l
done

echo v5.013-rc7..v5.13.1
git log --oneline v5.13-rc7..v5.13.1| wc -l

# v5.13.1 to v5.13.19
for ((i=2; i<=16; i++)); do
    echo v5.13.$(($i-1))..v5.13.$i
    git log --oneline v5.13.$(($i-1))..v5.13.$i| wc -l
done

# v5.14
echo v5.13.19..v5.14
git log --oneline v5.13.19..v5.14| wc -l
 
# 5.14-rc versions
for ((i=2; i<=7; i++)); do
    echo v5.14-rc$(($i-1))..v5.14-rc$i
    git log --oneline v5.14-rc$(($i-1))..v5.14-rc$i| wc -l
done

echo v5.14-rc7..v5.14.1
git log --oneline v5.14-rc7..v5.14.1| wc -l

# v5.14.1 to v5.14.21
for ((i=2; i<=21; i++)); do
    echo v5.14.$(($i-1))..v5.14.$i
    git log --oneline v5.14.$(($i-1))..v5.14.$i| wc -l
done

# v5.15
echo v5.14.21..v5.15
git log --oneline v5.14.21..v5.15| wc -l

# 5.15-rc versions
for ((i=2; i<=7; i++)); do
    echo v5.15-rc$(($i-1))..v5.15-rc$i
    git log --oneline v5.15-rc$(($i-1))..v5.15-rc$i| wc -l
done

echo v5.15-rc7..v5.15.1
git log --oneline v5.15-rc7..v5.15.1| wc -l

# v5.15.1 to v5.15.77
for ((i=2; i<=77; i++)); do
    echo v5.15.$(($i-1))..v5.15.$i
    git log --oneline v5.15.$(($i-1))..v5.15.$i| wc -l
done

# v5.16
echo v5.15.77..v5.16
git log --oneline v5.15.77..v5.16| wc -l
 
# 5.16-rc versions
for ((i=2; i<=8; i++)); do
    echo v5.16-rc$(($i-1))..v5.16-rc$i
    git log --oneline v5.16-rc$(($i-1))..v5.16-rc$i| wc -l
done

echo v5.16-rc8..v5.16.1
git log --oneline v5.16-rc8..v5.16.1| wc -l

# v5.16.1 to v5.16.20
for ((i=2; i<=20; i++)); do
    echo v5.16.$(($i-1))..v5.16.$i
    git log --oneline v5.16.$(($i-1))..v5.16.$i| wc -l
done

# v5.17
echo v5.16.20..v5.17
git log --oneline v5.16.20..v5.17| wc -l
 
# 5.17-rc versions
for ((i=2; i<=8; i++)); do
    echo v5.17-rc$(($i-1))..v5.17-rc$i
    git log --oneline v5.17-rc$(($i-1))..v5.17-rc$i| wc -l
done

echo v5.17-rc8..v5.17.1
git log --oneline v5.17-rc8..v5.17.1| wc -l

# v5.17.1 to v5.17.15
for ((i=2; i<=15; i++)); do
    echo v5.17.$(($i-1))..v5.17.$i
    git log --oneline v5.17.$(($i-1))..v5.17.$i| wc -l
done

# v5.18
echo v5.17.15..v5.18
git log --oneline v5.17.15..v5.18| wc -l

# 5.18-rc versions
for ((i=2; i<=7; i++)); do
    echo v5.18-rc$(($i-1))..v5.18-rc$i
    git log --oneline v5.18-rc$(($i-1))..v5.18-rc$i| wc -l
done

echo v5.18-rc7..v5.18.1
git log --oneline v5.18-rc7..v5.18.1| wc -l

# v5.18.1 to v5.18.19
for ((i=2; i<=19; i++)); do
    echo v5.18.$(($i-1))..v5.18.$i
    git log --oneline v5.18.$(($i-1))..v5.18.$i| wc -l
done

# v5.19
echo v5.18.19..v5.19
git log --oneline v5.18.19..v5.19| wc -l
 
# 5.19-rc versions
for ((i=2; i<=8; i++)); do
    echo v5.19-rc$(($i-1))..v5.19-rc$i
    git log --oneline v5.19-rc$(($i-1))..v5.19-rc$i| wc -l
done

echo v5.19-rc8..v5.19.1
git log --oneline v5.19-rc8..v5.19.1| wc -l

# v5.19.1 to v5.19.17
for ((i=2; i<=17; i++)); do
    echo v5.19.$(($i-1))..v5.19.$i
    git log --oneline v5.19.$(($i-1))..v5.19.$i| wc -l
done

# v6.0
echo v5.19.7..v6.0
git log --oneline v5.19.7..v6.0| wc -l

# 6.0-rc versions
for ((i=2; i<=7; i++)); do
    echo v6.0-rc$(($i-1))..v6.0-rc$i
    git log --oneline v6.0-rc$(($i-1))..v6.0-rc$i| wc -l
done

echo v6.0-rc7..v6.0.1
git log --oneline v6.0-rc7..v6.0.1| wc -l

# v6.0.1 to v6.0.7
for ((i=2; i<=7; i++)); do
    echo v6.0.$(($i-1))..v6.0.$i
    git log --oneline v6.0.$(($i-1))..v6.0.$i| wc -l
done
