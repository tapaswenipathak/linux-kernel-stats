

all : scripts/loc.o scripts/patches.o scripts/extension.o scripts/drivers.o scripts/stable_lines.o scripts/subsystems.o scripts/glimpseindex_cocci.o scripts/list_of_drivers.o scripts/no_of_directories_drivers.o scripts/commits.o scripts/files.o scripts/no.of_lines_files.o scripts/diffstat_allVersions.o scripts/diffstat_mainVersions.o scripts/get_release_notes.o scripts/get_shortlogs.o scripts/versions_till_now.o scripts/no_of_directories_staging.o scripts/duration_mainVersions.o scripts/duration_AllVersions.o scripts/releaseDates_mainVersions.o scripts/get_linus_releasenotes_links.py scripts/firmwares.sh scripts/message_passing.sh scripts/bus_protocols.sh scripts/buffer.sh



# PREREQUISITE - 

# A. To clone the Linux Kernel Stable Tree inside the folder named 'linux-stable', run the following command in your terminal
# Step 1. mkdir linux-stable;
# Step 2. cd linux-stable
# Step 3. git clone git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git 

# B. To clone the Linux-Kernel-Source-Tree inside the folder named 'torvalds', run the following commands in your terminal
# Step 1. mkdir torvalds;
# Step 2. cd torvalds
# Step 3. git clone https://github.com/torvalds/linux.git

# C. git clone https://git.kernel.org/pub/scm/linux/kernel/git/xiang/erofs-utils.git

# D. git clone https://git.kernel.org/pub/scm/linux/kernel/git/legion/kbd.git

# E. git clone https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git

# F. git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/nico/archive

#If the above mentioned repositories already exist in your system, then you can directly run the Makefile using "make" command in the terminal


# Following command will run the file named loc.sh
scripts/loc.o:
	@(echo "lines of code in each version of linux kernel")
	@(cd scripts; bash loc.sh)

# Following command will run the file named patches.sh
scripts/patches.o:
	@(echo "Number of patches in each version of linux kernel")
	@(cd scripts; bash patches.sh)

# Following command will run the file named extension.sh
scripts/extension.o:
	@(echo "Extensions in each version of linux kernel")
	@(cd scripts; bash extension.sh)


# Following command will run the file named drivers.sh
scripts/drivers.o:
	@(echo "Number of lines in drivers present in each version of linux kernel")
	@(cd scripts; bash drivers.sh)


# Following command will run the file named subsystems.sh
scripts/subsystems.o:
	@(echo "subsystems in each version of linux kernel")
	@(cd scripts; bash subsystems.sh)


# Following command will run the file named glimpseindex_cocci.sh
scripts/glimpseindex_cocci.o:
	@(echo "Number of glimpseindex_cocci in each version of linux kernel")
	@(cd scripts; bash glimpseindex_cocci.sh)

# Following command will run the file named list_of_drivers.sh
scripts/list_of_drivers.o:
	@(echo "List of drivers in each version of linux kernel")
	@(cd scripts; bash list_of_drivers.sh)

# Following command will run the file named no_of_directories_drivers.sh
scripts/no_of_directories_drivers.o:
	@(echo "Number of directories for drivers in each version of linux kernel")
	@(cd scripts; bash no_of_directories_drivers.sh)


# Following command will run the file named commits.sh
scripts/commits.o:
	@(echo "Commits made in each version of linux kernel")
	@(cd scripts; bash commits.sh)


# Following command will run the file named files.sh
scripts/files.o:
	@(echo "List of files present in each version of linux kernel")
	@(cd scripts; bash files.sh)

# Following command will run the file named no.of_lines_files.sh
scripts/no.of_lines_files.o:
	@(echo "No. of lines in each file present in each version of linux kernel")
	@(cd scripts; bash no.of_lines_files.sh)

# Following command will run the file named diffstat_allVersions.sh
scripts/diffstat_allVersions.o:
	@(echo "Diffstat between two continous versions of linux kernel")
	@(cd scripts; bash diffstat_allVersions.sh)

# Following command will run the file named diffstat_mainVersions.sh
scripts/diffstat_mainVersions.o:
	@(echo "Diffstat between two main versions of linux kernel")
	@(cd scripts; bash diffstat_mainVersions.sh)
	
# Following command will run the file named get_release_notes.sh
scripts/get_release_notes.o:
	@(echo "Release notes for all the versions stored")
	@(cd scripts; bash get_release_notes.sh)

# Following command will run the file named get_shortlogs.sh
scripts/get_shortlogs.o:
	@(echo "Shortlogs for all versions of linux kernel")
	@(cd scripts; bash get_shortlogs.sh)
	
# Following command will run the file named versions_till_now.sh
scripts/versions_till_now.o:
	@(echo "All versions of linux kernel till now")
	@(cd scripts; bash versions_till_now.sh)

# Following command will run the file named no_of_directories_staging.sh
scripts/no_of_directories_staging.o:
	@(echo "Number of directories in staging in linux kernel till now")
	@(cd scripts; bash no_of_directories_staging.sh)

# Following command will run the file named duration_mainVersions.sh
scripts/duration_mainVersions.o:
	(echo "Duration of development of main versions of linux kernel")
	(cd scripts; bash duration_mainVersions.sh)
	
# following command will run the file named duration_AllVersions.sh
scripts/duration_AllVersions.o:
	(echo "Duration of development of main versions of linux kernel")
	(cd scripts; bash duration_AllVersions.sh)


# Following command will run the file named releaseDates_mainVersions.sh
scripts/releaseDates_mainVersions.o:
	@(echo "Release dates of main versions of linux kernel")
	@(cd scripts; bash releaseDates_mainVersions.sh)

# Following command will run the file named get_linus_releasenotes_links.py
scripts/get_linus_releasenotes_links.py:
	@(echo "Links to Linus's Release notes")
	@(cd scripts; python get_linus_releasenotes_links.py)

# Following command will run the file named firmwares.sh
scripts/firmwares.o:
	@(echo "List of firmwares supported")
	@(cd scripts; bash firmwares.sh)

# Following command will run the file named message_passing.sh
scripts/message_passing.o:
	@(echo "Gitlogs for message passing systems in linux kernel")
	@(cd scripts; bash message_passing.sh)

# Following command will run the file named bus_protocols.sh
scripts/bus_protocols.o:
	@(echo "Gitlogs for bus protocols in linux kernel")
	@(cd scripts; bash bus_protocols.sh)
	
# Following command will run the file named buffer.sh
scripts/buffer.o:
	@(echo "Gitlogs for buffers used and related, in linux kernel")
	@(cd scripts; bash buffer.sh)

# Following command will run the file named bluetooth.sh
scripts/bluetooth.o:
	@(echo "Gitlogs for Bluetooth, in linux kernel")
	@(cd scripts; bash bluetooth.sh)

# Following command will run the file named clock_support_configuration_git_log.sh
scripts/clock_support_configuration_git_log.o:
	@(echo "Gitlogs for clock support configuration, in linux kernel")
	@(cd scripts; bash clock_support_configuration_git_log.sh)

# Following command will run the file named cpu_threshold.sh
scripts/cpu_threshold.o:
	@(echo "Gitlogs for CPU threshold, in linux kernel")
	@(cd scripts; bash cpu_threshold.sh)

# Following command will run the file named crypto.sh
scripts/crypto.o:
	@(echo "Gitlogs for cryptography, in linux kernel")
	@(cd scripts; bash crypto.sh)

# Following command will run the file named dma.sh
scripts/dma.o:
	@(echo "Gitlogs for DMA, in linux kernel")
	@(cd scripts; bash dma.sh)

# Following command will run the file named firmware_git_log-q.sh
scripts/firmware_git_log-q.o:
	@(echo "Gitlogs for firmware, in linux kernel")
	@(cd scripts; bash firmware_git_log-q.sh)

# Following command will run the file named firmware_git_log.sh
scripts/firmware_git_log.o:
	@echo "Gitlogs for firmware, in linux kernel"
	@(cd scripts; bash firmware_git_log.sh)

# Following command will run the file named firmware_git_shortlog.sh
scripts/firmware_git_shortlog-q.o:
	@(echo "Gitlogs for firmware, in linux kernel")
	@(cd scripts; bash firmware_git_shortlog-q.sh)

# Following command will run the file named nfc.sh
scripts/nfc.o:
	@(echo "Gitlogs for NFC, in linux kernel")
	@(cd scripts; bash nfc.sh)

# Following command will run the file named no_of_files.sh
scripts/no_of_files.o:
	@(echo "Gitlogs for number of files, in linux kernel")
	@(cd scripts; bash no_of_files.sh)

# Following command will run the file named polling_git_log.sh
scripts/polling_git_log.o:
	@(echo "Gitlogs for polling, in linux kernel")
	@(cd scripts; bash polling_git_log.sh)

# Following command will run the file named power_handling.sh
scripts/power_handling.o:
	@(echo "Gitlogs for power handling, in linux kernel")
	@(cd scripts; bash power_handling.sh)

# Following command will run the file named resource_manipulation_git_log.sh
scripts/resource_manipulation_git_log.o:
	@(echo "Gitlogs for resource manipulation, in linux kernel")
	@(cd scripts; bash resource_manipulation_git_log.sh)

# Following command will run the file named romtypes.sh
scripts/romtypes.o:
	@(echo "Gitlogs for ROM types, in linux kernel")
	@(cd scripts; bash romtypes.sh)

# Following command will run the file named short_logs_bluetooth.sh
scripts/short_logs_bluetooth.o:
	@(echo "Gitlogs for Bluetooth, in linux kernel")
	@(cd scripts; bash short_logs_bluetooth.sh)

# Following command will run the file named short_logs_crypto.sh
scripts/short_logs_crypto.o:
	@(echo "Gitlogs for cryptography, in linux kernel")
	@(cd scripts; bash short_logs_crypto.sh)

# Following command will run the file named short_logs_dma.sh
scripts/short_logs_dma.o:
	@(echo "Gitlogs for DMA, in linux kernel")
	@(cd scripts; bash short_logs_dma.sh)

# Following command will run the file named short_logs_media.sh
scripts/short_logs_media.o:
	@(echo "Gitlogs for media, in linux kernel")
	@(cd scripts; bash short_logs_media.sh)

# Following command will run the file named sound.sh
scripts/sound.o:
	@(echo "Gitlogs for sound, in linux kernel")
	@(cd scripts; bash sound.sh)

# Following command will run the file named spinlock.sh
scripts/spinlock.o:
	@(echo "Displays the names of files consisting all types of spinlock in linux kernel")
	@(cd scripts; bash spinlock.sh)

# Following command will run the file named spinlock_log.sh
scripts/spinlock_log.o:
	@(echo "Gitlogs for spinlocks, in linux kernel")
	@(cd scripts; bash spinlock_log.sh)


