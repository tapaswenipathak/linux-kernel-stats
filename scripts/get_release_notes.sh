#!/bin/bash

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
wget -q $base_url -O index.html

# Extract the version numbers
versions=($(grep -oP "[0-9]+\.[0-9]+" index.html | sort -u))
versions+=($(grep -oP "[0-9]+\.[x]" index.html | sort -u))

first_ver="1.0"
# declare -a sub_versions

for version in "${versions[@]}"
do
    if [ ! -d "$dir_name/$version" ]; then
        # Create the directory if it doesn't exist
        mkdir "$dir_name/$version"
    fi
    echo "Downloading release notes for $version"
    if [ "$version" == "$first_ver" ]; then
        wget -q $base_url/v$version/CHANGES -O release_notes/$version/$first_ver.txt
        echo "Release Notes stored in $dir_name/$version/"
    else
        wget -q $base_url/v$version -O version.html 
        sub_versions=$(grep -o 'ChangeLog-[0-9]\{1,\}\.[0-9]\{1,\}\.[0-9]\{1,\}' version.html |sed 's/ChangeLog-//g'  | sort -u)
        for sub_version in "${sub_versions[@]}"
        do
            wget -q $base_url/v$version/ChangeLog-$sub_version -O $dir_name/$version/$sub_version.txt
        done
        rm -r version.html
    echo "Release Notes stored in $dir_name/$version/"
    echo ""
    fi
done