SRCDIR=~/torvalds/linux

# Files Types in drivers
cd $SRCDIR


for ((i=12;i<=39;i++)) ; do
	echo v2.6.$i 
	git checkout -fq v2.6.$i
	echo "files in drivers      `find drivers -type f | wc -l`"
done