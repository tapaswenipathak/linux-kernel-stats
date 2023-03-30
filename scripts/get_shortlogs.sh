#!/bin/bash

# Obtains shortlogs for each version of linux kernel
# Contributor: meetdheerajreddy@gmail.com

# Check if shortlogs directory exists, if not create it
if [ ! -d "shortlogs" ]; then
  mkdir shortlogs
fi

repos=("~/archive" "~/erofs-utils" "~/kbd" "~/history" "~/linux-stable/linux-stable")

# For each repository excluding linux
for repo in ${repos[@]}; do
  cd $repo

  # Get list of tags
  tags=$(git tag -l | sort -V)

  # For each tag
  for tag in $tags; do
    # Split tag name into main version and sub version
    if ! [[ $tag =~ ^v[0-9]+\.[0-9]+.*$ ]]; then
      continue
    fi

    version=($(echo $tag | tr '.' ' '))
    main_v="${version[0]}.${version[1]}"
    main_version=${main_v#v}
    # Create directory for main version if it doesn't exist
    if [ ! -d "../shortlogs/$main_version" ]; then
      mkdir "../shortlogs/$main_version"
    fi

    tag_file="../shortlogs/$main_version/${tag}.txt"
    if [ -f $tag_file ]; then
      continue
    fi

    # Extract shortlog for the tag and store it in the appropriate main version directory
    git shortlog $tag -- > "../shortlogs/$main_version/$tag.txt"
    # echo "$tag done"
  done

  # Move back to parent directory
  cd ..
done

