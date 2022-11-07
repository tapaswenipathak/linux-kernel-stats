
all : scripts/loc.o scripts/patches.o scripts/stable_lines.o scripts/glimpseindex_cocci.o


# PREREQUISITE - 
# A. To clone the Linux Kernel Stable Tree, run the following command in your terminal
# Step 1. git clone git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git 

# B. To clone the Linux-Kernel-Source-Tree inside the folder named torvalds run the following commands in your terminal
# Step 1. mkdir torvalds;
# Step 2. cd torvalds
# Step 3. git clone https://github.com/torvalds/linux.git

#If both of the above mentioned repositories already exist in your system, then you can directly run the Makefile using "make" command in the terminal


#  Following command will run the file named loc.sh

scripts/loc.o:
	(echo "lines of code in each version of linux kernel")
	(cd scripts; bash loc.sh)


# Following command will run the file named patches.sh

scripts/patches.o:
	(echo "Number of patches in each version of linux kernel")
	(cd scripts; bash patches.sh)


# Following command will run the file named stable_lines.sh

scripts/stable_lines.o:
	(echo "Number of stable lines in each version of linux kernel")
	(cd scripts; bash stable_lines.sh)


# Following command will run the file named glimpseindex_cocci.sh

scripts/glimpseindex_cocci.o:
	(echo "Number of glimpseindex_cocci in each version of linux kernel")
	(cd scripts; bash glimpseindex_cocci.sh)