#!/bin/bash
SRCDIR_A=~/linux-stable/linux-stable
SRCDIR_B=~/torvalds/linux



cd $SRCDIR_B
# v2.6.12
echo v2.6.12
git checkout -fq v2.6.12
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.12-rc versions
for tbl in $(git tag -l | grep v2.6.12-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.12.1 to v2.6.12.6
for ((i=1; i<=6; i++)); do
    echo v2.6.12.$i
    git checkout -fq v2.6.12.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v2.6.13
echo v2.6.13
git checkout -fq v2.6.13
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.13-rc versions
for tbl in $(git tag -l | grep v2.6.13-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.13.1 to v2.6.13.5
for ((i=1; i<=5; i++)); do
    echo v2.6.13.$i
    git checkout -fq v2.6.13.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v2.6.14
echo v2.6.14
git checkout -fq v2.6.14
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.14-rc versions
for tbl in $(git tag -l | grep v2.6.14-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.14.1 to v2.6.14.7
for ((i=1; i<=7; i++)); do
    echo v2.6.14.$i
    git checkout -fq v2.6.14.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v2.6.15
echo v2.6.15
git checkout -fq v2.6.15
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.15-rc versions
for tbl in $(git tag -l | grep v2.6.15-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.15.1 to v2.6.15.7
for ((i=1; i<=7; i++)); do
    echo v2.6.15.$i
    git checkout -fq v2.6.15.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v2.6.16
echo v2.6.16
git checkout -fq v2.6.16
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.16-rc versions
for tbl in $(git tag -l | grep v2.6.16-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.16.1 to v2.6.16.28
for ((i=1; i<=27; i++)); do
    echo v2.6.16.$i
    git checkout -fq v2.6.16.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done
for ((i=28; i<=62; i++)); do
    for tbl in $(git tag -l | grep v2.6.16.$i); do
        echo $tbl
        git checkout -fq $tbl
        find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
    done
done



cd $SRCDIR_B
# v2.6.17
echo v2.6.17
git checkout -fq v2.6.17
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.17-rc versions
for tbl in $(git tag -l | grep v2.6.17-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.17.1 to v2.6.17.14
for ((i=1; i<=14; i++)); do
    echo v2.6.17.$i
    git checkout -fq v2.6.17.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v2.6.18
echo v2.6.18
git checkout -fq v2.6.18
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.18-rc versions
for tbl in $(git tag -l | grep v2.6.18-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.18.1 to v2.6.18.8
for ((i=1; i<=8; i++)); do
    echo v2.6.18.$i
    git checkout -fq v2.6.18.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v2.6.19
echo v2.6.19
git checkout -fq v2.6.19
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.12=9-rc versions
for tbl in $(git tag -l | grep v2.6.19-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.19.1 to v2.6.19.7
for ((i=1; i<=7; i++)); do
    echo v2.6.19.$i
    git checkout -fq v2.6.19.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v2.6.20
echo v2.6.20
git checkout -fq v2.6.20
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.20-rc versions
for tbl in $(git tag -l | grep v2.6.20-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.20.1 to v2.6.20.21
for ((i=1; i<=21; i++)); do
    echo v2.6.20.$i
    git checkout -fq v2.6.20.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v2.6.21
echo v2.6.21
git checkout -fq v2.6.21
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.21-rc versions
for tbl in $(git tag -l | grep v2.6.21-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.21.1 to v2.6.21.7
for ((i=1; i<=7; i++)); do
    echo v2.6.21.$i
    git checkout -fq v2.6.21.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v2.6.22
echo v2.6.22
git checkout -fq v2.6.22
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.22-rc versions
for tbl in $(git tag -l | grep v2.6.22-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.22.1 to v2.6.22.19
for ((i=1; i<=19; i++)); do
    echo v2.6.22.$i
    git checkout -fq v2.6.22.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v2.6.23
echo v2.6.23
git checkout -fq v2.6.23
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.23-rc versions
for tbl in $(git tag -l | grep v2.6.23-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.23.1 to v2.6.23.17
for ((i=1; i<=17; i++)); do
    echo v2.6.23.$i
    git checkout -fq v2.6.23.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v2.6.24
echo v2.6.24
git checkout -fq v2.6.24
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.24-rc versions
for tbl in $(git tag -l | grep v2.6.24-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.24.1 to v2.6.24.7
for ((i=1; i<=7; i++)); do
    echo v2.6.24.$i
    git checkout -fq v2.6.24.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v2.6.25
echo v2.6.25
git checkout -fq v2.6.25
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.25-rc versions
for tbl in $(git tag -l | grep v2.6.25-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.25.1 to v2.6.25.20
for ((i=1; i<=20; i++)); do
    echo v2.6.25.$i
    git checkout -fq v2.6.25.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v2.6.26
echo v2.6.26
git checkout -fq v2.6.26
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.26-rc versions
for tbl in $(git tag -l | grep v2.6.26-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.26.1 to v2.6.26.8
for ((i=1; i<=8; i++)); do
    echo v2.6.26.$i
    git checkout -fq v2.6.26.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v2.6.27
echo v2.6.27
git checkout -fq v2.6.27
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.27-rc versions
for tbl in $(git tag -l | grep v2.6.27-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.27.1 to v2.6.27.62
for ((i=1; i<=62; i++)); do
    echo v2.6.27.$i
    git checkout -fq v2.6.27.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v2.6.28
echo v2.6.28
git checkout -fq v2.6.28
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.28-rc versions
for tbl in $(git tag -l | grep v2.6.28-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.28.1 to v2.6.28.10
for ((i=1; i<=10; i++)); do
    echo v2.6.28.$i
    git checkout -fq v2.6.28.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v2.6.29
echo v2.6.29
git checkout -fq v2.6.29
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.29-rc versions
for tbl in $(git tag -l | grep v2.6.29-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.29.1 to v2.6.29.6
for ((i=1; i<=6; i++)); do
    echo v2.6.29.$i
    git checkout -fq v2.6.29.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v2.6.30
echo v2.6.30
git checkout -fq v2.6.30
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.30-rc versions
for tbl in $(git tag -l | grep v2.6.30-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.30.1 to v2.6.30.10
for ((i=1; i<=10; i++)); do
    echo v2.6.30.$i
    git checkout -fq v2.6.30.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v2.6.31
echo v2.6.31
git checkout -fq v2.6.31
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.31-rc versions
for tbl in $(git tag -l | grep v2.6.31-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.31.1 to v2.6.31.14
for ((i=1; i<=14; i++)); do
    echo v2.6.31.$i
    git checkout -fq v2.6.31.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v2.6.32
echo v2.6.32
git checkout -fq v2.6.32
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.32-rc versions
for tbl in $(git tag -l | grep v2.6.32-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.32.1 to v2.6.32.71
for ((i=1; i<=71; i++)); do
    echo v2.6.32.$i
    git checkout -fq v2.6.32.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v2.6.33
echo v2.6.33
git checkout -fq v2.6.33
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.33-rc versions
for tbl in $(git tag -l | grep v2.6.33-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.33.1 to v2.6.33.20
for ((i=1; i<=20; i++)); do
    echo v2.6.33.$i
    git checkout -fq v2.6.33.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v2.6.34
echo v2.6.34
git checkout -fq v2.6.34
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.34-rc versions
for tbl in $(git tag -l | grep v2.6.34-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.34.1 to v2.6.34.15
for ((i=1; i<=15; i++)); do
    echo v2.6.34.$i
    git checkout -fq v2.6.34.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v2.6.35
echo v2.6.35
git checkout -fq v2.6.35
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.35-rc versions
for tbl in $(git tag -l | grep v2.6.35-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.35.1 to v2.6.35.14
for ((i=1; i<=14; i++)); do
    echo v2.6.35.$i
    git checkout -fq v2.6.35.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v2.6.36
echo v2.6.36
git checkout -fq v2.6.36
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.36-rc versions
for tbl in $(git tag -l | grep v2.6.36-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.36.1 to v2.6.36.4
for ((i=1; i<=4; i++)); do
    echo v2.6.36.$i
    git checkout -fq v2.6.36.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v2.6.37
echo v2.6.37
git checkout -fq v2.6.37
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.37-rc versions
for tbl in $(git tag -l | grep v2.6.37-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.37.1 to v2.6.37.6
for ((i=1; i<=6; i++)); do
    echo v2.6.37.$i
    git checkout -fq v2.6.37.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v2.6.38
echo v2.6.38
git checkout -fq v2.6.38
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.38-rc versions
for tbl in $(git tag -l | grep v2.6.38-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.38.1 to v2.6.38.8
for ((i=1; i<=8; i++)); do
    echo v2.6.38.$i
    git checkout -fq v2.6.38.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v2.6.39
echo v2.6.39
git checkout -fq v2.6.39
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 2.6.39-rc versions
for tbl in $(git tag -l | grep v2.6.39-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v2.6.39.1 to v2.6.39.4
for ((i=1; i<=4; i++)); do
    echo v2.6.39.$i
    git checkout -fq v2.6.39.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v3.0
echo v3.0
git checkout -fq v3.0
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'


cd $SRCDIR_A
# 3.0-rc versions
for tbl in $(git tag -l | grep v3.0-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.0.1 to v3.0.101
for ((i=1; i<=101; i++)); do
    echo v3.0.$i
    git checkout -fq v3.0.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v3.1
echo v3.1
git checkout -fq v3.1
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.1-rc versions
for tbl in $(git tag -l | grep v3.1-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.1.1 to v3.1.10
for ((i=1; i<=10; i++)); do
    echo v3.1.$i
    git checkout -fq v3.1.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v3.2
echo v3.2
git checkout -fq v3.2
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.2-rc versions
for tbl in $(git tag -l | grep v3.2-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.2.1 to v3.2.102
for ((i=1; i<=102; i++)); do
    echo v3.2.$i
    git checkout -fq v3.2.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v3.3
echo v3.3
git checkout -fq v3.3
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'


cd $SRCDIR_A
# 3.3-rc versions
for tbl in $(git tag -l | grep v3.3-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.3.1 to v3.3.8
for ((i=1; i<=8; i++)); do
    echo v3.3.$i
    git checkout -fq v3.3.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v3.4
echo v3.4
git checkout -fq v3.4
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.4-rc versions
for tbl in $(git tag -l | grep v3.4-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.4.1 to v3.4.113
for ((i=1; i<=113; i++)); do
    echo v3.4.$i
    git checkout -fq v3.4.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v3.5
echo v3.5
git checkout -fq v3.5
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.5-rc versions
for tbl in $(git tag -l | grep v3.5-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.5.1 to v3.5.7
for ((i=1; i<=7; i++)); do
    echo v3.5.$i
    git checkout -fq v3.5.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v3.6
echo v3.6
git checkout -fq v3.6
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.6-rc versions
for tbl in $(git tag -l | grep v3.6-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.6.1 to v3.6.11
for ((i=1; i<=11; i++)); do
    echo v3.6.$i
    git checkout -fq v3.6.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v3.7
echo v3.7
git checkout -fq v3.7
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.7-rc versions
for tbl in $(git tag -l | grep v3.7-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.7.1 to v3.7.10
for ((i=1; i<=10; i++)); do
    echo v3.7.$i
    git checkout -fq v3.7.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v3.8
echo v3.8
git checkout -fq v3.8
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.8-rc versions
for tbl in $(git tag -l | grep v3.8-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.8.1 to v3.8.13
for ((i=1; i<=13; i++)); do
    echo v3.8.$i
    git checkout -fq v3.8.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v3.9
echo v3.9
git checkout -fq v3.9
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.9-rc versions
for tbl in $(git tag -l | grep v3.9-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.9.1 to v3.9.11
for ((i=1; i<=11; i++)); do
    echo v3.9.$i
    git checkout -fq v3.9.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v3.10
echo v3.10
git checkout -fq v3.10
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.10-rc versions
for tbl in $(git tag -l | grep v3.10-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.10.1 to v3.0.108
for ((i=1; i<=108; i++)); do
    echo v3.10.$i
    git checkout -fq v3.10.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v3.11
echo v3.11
git checkout -fq v3.11
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.11-rc versions
for tbl in $(git tag -l | grep v3.11-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.11.1 to v3.11.10
for ((i=1; i<=10; i++)); do
    echo v3.11.$i
    git checkout -fq v3.11.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v3.12
echo v3.12
git checkout -fq v3.12
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.12-rc versions
for tbl in $(git tag -l | grep v3.12-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.12.1 to v3.12.74
for ((i=1; i<=74; i++)); do
    echo v3.12.$i
    git checkout -fq v3.12.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v3.13
echo v3.13
git checkout -fq v3.13
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.13-rc versions
for tbl in $(git tag -l | grep v3.13-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.13.1 to v3.13.11
for ((i=1; i<=11; i++)); do
    echo v3.13.$i
    git checkout -fq v3.13.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v3.14
echo v3.14
git checkout -fq v3.14
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.14-rc versions
for tbl in $(git tag -l | grep v3.14-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.14.1 to v3.14.77
for ((i=1; i<=77; i++)); do
    echo v3.14.$i
    git checkout -fq v3.14.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v3.15
echo v3.15
git checkout -fq v3.15
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.15-rc versions
for tbl in $(git tag -l | grep v3.15-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.15.1 to v3.15.10
for ((i=1; i<=10; i++)); do
    echo v3.15.$i
    git checkout -fq v3.15.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v3.16
echo v3.16
git checkout -fq v3.16
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.16-rc versions
for tbl in $(git tag -l | grep v3.16-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.16.1 to v3.16.85
for ((i=1; i<=85; i++)); do
    echo v3.16.$i
    git checkout -fq v3.16.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v3.17
echo v3.17
git checkout -fq v3.17
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.17-rc versions
for tbl in $(git tag -l | grep v3.17-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.17.1 to v3.17.8
for ((i=1; i<=8; i++)); do
    echo v3.17.$i
    git checkout -fq v3.17.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v3.18
echo v3.18
git checkout -fq v3.18
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.18-rc versions
for tbl in $(git tag -l | grep v3.18-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.18.1 to v3.18.140
for ((i=1; i<=140; i++)); do
    echo v3.18.$i
    git checkout -fq v3.18.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v3.19
echo v3.19
git checkout -fq v3.19
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 3.19-rc versions
for tbl in $(git tag -l | grep v3.19-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v3.19.1 to v3.19.8
for ((i=1; i<=8; i++)); do
    echo v3.19.$i
    git checkout -fq v3.19.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done




cd $SRCDIR_B
# v4.0
echo v4.0
git checkout -fq v4.0
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'


cd $SRCDIR_A
# 4.0-rc versions
for tbl in $(git tag -l | grep v4.0-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.0.1 to v4.0.9
for ((i=1; i<=9; i++)); do
    echo v4.0.$i
    git checkout -fq v4.0.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v4.1
echo v4.1
git checkout -fq v4.1
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.1-rc versions
for tbl in $(git tag -l | grep v4.1-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.1.1 to v4.1.52
for ((i=1; i<=52; i++)); do
    echo v4.1.$i
    git checkout -fq v4.1.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v4.2
echo v4.2
git checkout -fq v4.2
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.2-rc versions
for tbl in $(git tag -l | grep v4.2-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.2.1 to v4.2.8
for ((i=1; i<=8; i++)); do
    echo v4.2.$i
    git checkout -fq v4.2.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v4.3
echo v4.3
git checkout -fq v4.3
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'


cd $SRCDIR_A
# 4.3-rc versions
for tbl in $(git tag -l | grep v4.3-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.3.1 to v4.3.6
for ((i=1; i<=6; i++)); do
    echo v4.3.$i
    git checkout -fq v4.3.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v4.4
echo v4.4
git checkout -fq v4.4
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.4-rc versions
for tbl in $(git tag -l | grep v4.4-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.4.1 to v4.4.302
for ((i=1; i<=302; i++)); do
    echo v4.4.$i
    git checkout -fq v4.4.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v4.5
echo v4.5
git checkout -fq v4.5
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.5-rc versions
for tbl in $(git tag -l | grep v4.5-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.5.1 to v4.5.7
for ((i=1; i<=7; i++)); do
    echo v4.5.$i
    git checkout -fq v4.5.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v4.6
echo v4.6
git checkout -fq v4.6
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.6-rc versions
for tbl in $(git tag -l | grep v4.6-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.6.1 to v4.6.7
for ((i=1; i<=7; i++)); do
    echo v4.6.$i
    git checkout -fq v4.6.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v4.7
echo v4.7
git checkout -fq v4.7
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.7-rc versions
for tbl in $(git tag -l | grep v4.7-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.7.1 to v4.7.10
for ((i=1; i<=10; i++)); do
    echo v4.7.$i
    git checkout -fq v4.7.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v4.8
echo v4.8
git checkout -fq v4.8
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.8-rc versions
for tbl in $(git tag -l | grep v4.8-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.8.1 to v4.8.17
for ((i=1; i<=17; i++)); do
    echo v4.8.$i
    git checkout -fq v4.8.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v4.9
echo v4.9
git checkout -fq v4.9
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.9-rc versions
for tbl in $(git tag -l | grep v4.9-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.9.1 to v4.9.332
for ((i=1; i<=332; i++)); do
    echo v4.9.$i
    git checkout -fq v4.9.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v4.10
echo v4.10
git checkout -fq v4.10
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.10-rc versions
for tbl in $(git tag -l | grep v4.10-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.10.1 to v4.0.108
for ((i=1; i<=17; i++)); do
    echo v4.10.$i
    git checkout -fq v4.10.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v4.11
echo v4.11
git checkout -fq v4.11
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.11-rc versions
for tbl in $(git tag -l | grep v4.11-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.11.1 to v4.11.12
for ((i=1; i<=12; i++)); do
    echo v4.11.$i
    git checkout -fq v4.11.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v4.12
echo v4.12
git checkout -fq v4.12
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.12-rc versions
for tbl in $(git tag -l | grep v4.12-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.12.1 to v4.12.14
for ((i=1; i<=14; i++)); do
    echo v4.12.$i
    git checkout -fq v4.12.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v4.13
echo v4.13
git checkout -fq v4.13
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.13-rc versions
for tbl in $(git tag -l | grep v4.13-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.13.1 to v4.13.16
for ((i=1; i<=16; i++)); do
    echo v4.13.$i
    git checkout -fq v4.13.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v4.14
echo v4.14
git checkout -fq v4.14
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.14-rc versions
for tbl in $(git tag -l | grep v4.14-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.14.1 to v4.14.298
for ((i=1; i<=298; i++)); do
    echo v4.14.$i
    git checkout -fq v4.14.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v4.15
echo v4.15
git checkout -fq v4.15
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.15-rc versions
for tbl in $(git tag -l | grep v4.15-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.15.1 to v4.15.18
for ((i=1; i<=18; i++)); do
    echo v4.15.$i
    git checkout -fq v4.15.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v4.16
echo v4.16
git checkout -fq v4.16
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.16-rc versions
for tbl in $(git tag -l | grep v4.16-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.16.1 to v4.16.18
for ((i=1; i<=18; i++)); do
    echo v4.16.$i
    git checkout -fq v4.16.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v4.17
echo v4.17
git checkout -fq v4.17
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.17-rc versions
for tbl in $(git tag -l | grep v4.17-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.17.1 to v4.17.19
for ((i=1; i<=19; i++)); do
    echo v4.17.$i
    git checkout -fq v4.17.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v4.18
echo v4.18
git checkout -fq v4.18
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.18-rc versions
for tbl in $(git tag -l | grep v4.18-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.18.1 to v4.18.20
for ((i=1; i<=20; i++)); do
    echo v4.18.$i
    git checkout -fq v4.18.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v4.19
echo v4.19
git checkout -fq v4.19
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.19-rc versions
for tbl in $(git tag -l | grep v4.19-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.19.1 to v4.19.264
for ((i=1; i<=264; i++)); do
    echo v4.19.$i
    git checkout -fq v4.19.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v4.20
echo v4.20
git checkout -fq v4.20
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 4.20-rc versions
for tbl in $(git tag -l | grep v4.20-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v4.20.1 to v4.20.17
for ((i=1; i<=17; i++)); do
    echo v4.20.$i
    git checkout -fq v4.20.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v5.0
echo v5.0
git checkout -fq v5.0
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'


cd $SRCDIR_A
# 5.0-rc versions
for tbl in $(git tag -l | grep v5.0-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.0.1 to v5.0.21
for ((i=1; i<=21; i++)); do
    echo v5.0.$i
    git checkout -fq v5.0.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v5.1
echo v5.1
git checkout -fq v5.1
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.1-rc versions
for tbl in $(git tag -l | grep v5.1-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.1.1 to v5.1.21
for ((i=1; i<=21; i++)); do
    echo v5.1.$i
    git checkout -fq v5.1.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v5.2
echo v5.2
git checkout -fq v5.2
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.2-rc versions
for tbl in $(git tag -l | grep v5.2-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.2.1 to v5.2.21
for ((i=1; i<=21; i++)); do
    echo v5.2.$i
    git checkout -fq v5.2.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v5.3
echo v5.3
git checkout -fq v5.3
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'


cd $SRCDIR_A
# 5.3-rc versions
for tbl in $(git tag -l | grep v5.3-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.3.1 to v5.3.18
for ((i=1; i<=18; i++)); do
    echo v5.3.$i
    git checkout -fq v5.3.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v5.4
echo v5.4
git checkout -fq v5.4
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.4-rc versions
for tbl in $(git tag -l | grep v5.4-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.4.1 to v5.4.223
for ((i=1; i<=223; i++)); do
    echo v5.4.$i
    git checkout -fq v5.4.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v5.5
echo v5.5
git checkout -fq v5.5
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.5-rc versions
for tbl in $(git tag -l | grep v5.5-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.5.1 to v5.5.19
for ((i=1; i<=19; i++)); do
    echo v5.5.$i
    git checkout -fq v5.5.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v5.6
echo v5.6
git checkout -fq v5.6
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.6-rc versions
for tbl in $(git tag -l | grep v5.6-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.6.1 to v5.6.19
for ((i=1; i<=19; i++)); do
    echo v5.6.$i
    git checkout -fq v5.6.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v5.7
echo v5.7
git checkout -fq v5.7
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.7-rc versions
for tbl in $(git tag -l | grep v5.7-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.7.1 to v5.7.19
for ((i=1; i<=19; i++)); do
    echo v5.7.$i
    git checkout -fq v5.7.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v5.8
echo v5.8
git checkout -fq v5.8
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.8-rc versions
for tbl in $(git tag -l | grep v5.8-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.8.1 to v5.8.18
for ((i=1; i<=18; i++)); do
    echo v5.8.$i
    git checkout -fq v5.8.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v5.9
echo v5.9
git checkout -fq v5.9
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.9-rc versions
for tbl in $(git tag -l | grep v5.9-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.9.1 to v5.9.16
for ((i=1; i<=16; i++)); do
    echo v5.9.$i
    git checkout -fq v5.9.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v5.10
echo v5.10
git checkout -fq v5.10
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.10-rc versions
for tbl in $(git tag -l | grep v5.10-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.10.1 to v5.0.153
for ((i=1; i<=153; i++)); do
    echo v5.10.$i
    git checkout -fq v5.10.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v5.11
echo v5.11
git checkout -fq v5.11
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.11-rc versions
for tbl in $(git tag -l | grep v5.11-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.11.1 to v5.11.22
for ((i=1; i<=22; i++)); do
    echo v5.11.$i
    git checkout -fq v5.11.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v5.12
echo v5.12
git checkout -fq v5.12
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.12-rc versions
for tbl in $(git tag -l | grep v5.12-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.12.1 to v5.12.19
for ((i=1; i<=19; i++)); do
    echo v5.12.$i
    git checkout -fq v5.12.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v5.13
echo v5.13
git checkout -fq v5.13
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.13-rc versions
for tbl in $(git tag -l | grep v5.13-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.13.1 to v5.13.19
for ((i=1; i<=16; i++)); do
    echo v5.13.$i
    git checkout -fq v5.13.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v5.14
echo v5.14
git checkout -fq v5.14
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.14-rc versions
for tbl in $(git tag -l | grep v5.14-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.14.1 to v5.14.21
for ((i=1; i<=21; i++)); do
    echo v5.14.$i
    git checkout -fq v5.14.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v5.15
echo v5.15
git checkout -fq v5.15
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.15-rc versions
for tbl in $(git tag -l | grep v5.15-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.15.1 to v5.15.77
for ((i=1; i<=77; i++)); do
    echo v5.15.$i
    git checkout -fq v5.15.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v5.16
echo v5.16
git checkout -fq v5.16
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.16-rc versions
for tbl in $(git tag -l | grep v5.16-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.16.1 to v5.16.20
for ((i=1; i<=20; i++)); do
    echo v5.16.$i
    git checkout -fq v5.16.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v5.17
echo v5.17
git checkout -fq v5.17
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.17-rc versions
for tbl in $(git tag -l | grep v5.17-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.17.1 to v5.17.15
for ((i=1; i<=15; i++)); do
    echo v5.17.$i
    git checkout -fq v5.17.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v5.18
echo v5.18
git checkout -fq v5.18
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.18-rc versions
for tbl in $(git tag -l | grep v5.18-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.18.1 to v5.18.19
for ((i=1; i<=20; i++)); do
    echo v5.18.$i
    git checkout -fq v5.18.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done



cd $SRCDIR_B
# v5.19
echo v5.19
git checkout -fq v5.19
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 5.19-rc versions
for tbl in $(git tag -l | grep v5.19-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v5.19.1 to v5.19.17
for ((i=1; i<=17; i++)); do
    echo v5.19.$i
    git checkout -fq v5.19.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done


cd $SRCDIR_B
# v6.0
echo v6.0
git checkout -fq v6.0
find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

cd $SRCDIR_A
# 6.0-rc versions
for tbl in $(git tag -l | grep v6.0-); do
    echo $tbl
    git checkout -fq $tbl
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'

done

# v6.0.1 to v6.0.7
for ((i=1; i<=7; i++)); do
    echo v6.0.$i
    git checkout -fq v6.0.$i
    find -type f -name '*.[chS]' -exec wc -l {} \; | awk 'BEGIN{lines=0}{lines+=$1}END{print lines}'
done