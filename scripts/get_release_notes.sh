#!/bin/bash

# Obtains release notes for various linux kernel versions. 
# Contributor: duttabhishek0@gmail.com

# The name of the directory to create
dir_name="release_notes"
base_url="https://mirrors.edge.kernel.org/pub/linux/kernel"

# Check if the directory already exists
if [ ! -d "$dir_name" ]; then
  # Create the directory if it doesn't exist
  mkdir "$dir_name"
else
  # The directory already exists, print a message
  echo "Directory $dir_name already exists, not creating a new one."
fi

# Download the directory listing
wget -q $base_url -O version.html

# Extract the version numbers
versions=($(grep -oP "[0-9]+\.[0-9]+" version.html | sort -u))
versions+=($(grep -oP "[0-9]+\.[x]" version.html | sort -u))

first_ver="1.0"
# declare -a sub_versions

for version in "${versions[@]}"
do
    if [ ! -d "$dir_name/$version" ]; then
        # Create the directory if it doesn't exist
        mkdir "$dir_name/$version"
    fi
    echo "Downloading release notes for $version"
    if [ "$version" == "1.0" ]; then
        wget -q $base_url/v$version/CHANGES -O release_notes/$version/$first_ver.txt
        echo "Release Notes stored in $dir_name/$version"
    elif [[ "$version" == "1.1" ]] || [[ "$version" == "1.2" ]] || [[ "$version" == "1.3" ]] || [[ "$version" == "2.0" ]] || [[ "$version" == "2.1" ]] || [[ "$version" == "2.2" ]]  || [[ "$version" == "2.3" ]] || [[ "$version" == "2.4" ]] || [[ "$version" == "2.5" ]] || [[ "$version" == "2.6" ]]; then
        wget  -q $base_url/v$version -O sub_version.html 
        sub_versions=($(grep -oP "linux-[0-9]+\.[0-9]+\.[0-9]+\.tar+\.xz" sub_version.html | sort -u |sed 's/linux-\([0-9.]\{1,\}\)\..*/\1/'))
        for sub_version in "${sub_versions[@]}"
        do
            # Download the file for the version
            wget -q $base_url/v$version/linux-$sub_version.tar.gz
            # Unzip the file for the version
            tar xzf linux-$sub_version.tar.gz
            # Copy the release notes file for the version
            if [ ! -d Documentation/Changes ]; then
                cp linux/CHANGES $dir_name/$version/$sub_version.txt
            else
                cp Documentation/Changes $dir_name/$version/$sub_version.txt
            fi
            # Remove the unzipped directory for the version
            rm -r linux
            # Remove the downloaded file for the version
            rm -r linux-$sub_version.tar.gz
        done
        rm sub_version.html
    else
        wget  -q $base_url/v$version -O sub_versions.html 
        sub_versions=($(grep -o 'ChangeLog-[0-9]\{1,\}\.[0-9]\{1,\}\.[0-9]\{1,\}' sub_versions.html |sed 's/ChangeLog-//g'  | sort -u))
        n=${#sub_versions[@]} 
        # echo $n
        for sub_version in "${sub_versions[@]}"
        do
            wget -q $base_url/v$version/ChangeLog-$sub_version -O $dir_name/$version/$sub_version.txt
        done
        rm -r sub_version.html
    echo "Release Notes stored in $dir_name/$version"
    fi
    rm -r version.html
done