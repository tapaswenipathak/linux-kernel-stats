SRCDIR=~/torvalds/linux

cd $SRCDIR

for ((i=12;i<=39;i++)) ; do
	echo v2.6.$(($i-1))..v2.6.$i
    git log --oneline v2.6.$(($i-1))..v2.6.$i | wc -l
done

echo "v2.6.39..v3.0"
git log --oneline v2.6.39..v3.0 | wc -l

for ((i=1;i<=19;i++)) ; do

	echo v3.$(($i-1))..v3.$i
    git log --oneline v3.$(($i-1))..v3.$i | wc -l
done

echo "v3.19..v4.0"
git log --oneline v3.19..v4.0 | wc -l


for ((i=1;i<=20;i++)) ; do
	echo v4.$(($i-1))..v4.$i
    git log --oneline v4.$(($i-1))..v4.$i | wc -l
done

for ((i=1;i<=2;i++)) ; do
	echo v5.$(($i-1))..v5.$i
    git log --oneline v5.$(($i-1)) | wc -l
done

