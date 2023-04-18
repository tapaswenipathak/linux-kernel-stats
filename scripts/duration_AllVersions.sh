#!/bin/bash

# outputs the duration for all versions, including rc versions.
# Contributor: meetdheerajreddy@gmail.com

filename="duration_allversions.txt"

# change directory to the repository path
cd ~/archive
    previous_date=""
    previous_tag=""
    for tag in $(git tag | grep -vE '^[0-9]+\.' | sort -V); do
        current_date=$(git log --pretty=format:%cd --date=short -n 1 -- "$tag")
        if [ -n "$previous_date" ]; then
            duration=$(( ($(date -d "$current_date" +%s) - $(date -d "$previous_date" +%s)) / 86400 )) || duration=""
            echo "$dir:$previous_tag to $tag - ${duration:-unknown} days" >> ~/linux-kernel-stats/data_dir/$filename
        fi
        previous_date="$current_date"
        previous_tag="$tag"
    done
    for tag in $(git tag | grep -E 'rc[0-9]+' | sort -V); do
        current_date=$(git log --pretty=format:%cd --date=short -n 1 -- "$tag")
        if [ -n "$previous_date" ]; then
            duration=$(( ($(date -d "$current_date" +%s) - $(date -d "$previous_date" +%s)) / 86400 )) || duration=""
            echo "$dir:$previous_tag to $tag - ${duration:-unknown} days" >> ~/linux-kernel-stats/data_dir/$filename
        fi
        previous_date="$current_date"
        previous_tag="$tag"
    done



# Second loop for erofs-utils repo
cd ~/erofs-utils
    previous_date=""
    previous_tag=""
    for tag in $(git tag | grep -vE '^[0-9]+\.' | sort -V); do
        current_date=$(git log --pretty=format:%cd --date=short -n 1 -- "$tag")
        if [ -n "$previous_date" ]; then
            duration=$(( ($(date -d "$current_date" +%s) - $(date -d "$previous_date" +%s)) / 86400 )) || duration=""
            echo "$dir:$previous_tag to $tag - ${duration:-unknown} days" >> ~/linux-kernel-stats/data_dir/$filename
        fi
        previous_date="$current_date"
        previous_tag="$tag"
    done
    for tag in $(git tag | grep -E 'rc[0-9]+' | sort -V); do
        current_date=$(git log --pretty=format:%cd --date=short -n 1 -- "$tag")
        if [ -n "$previous_date" ]; then
            duration=$(( ($(date -d "$current_date" +%s) - $(date -d "$previous_date" +%s)) / 86400 )) || duration=""
            echo "$dir:$previous_tag to $tag - ${duration:-unknown} days" >> ~/linux-kernel-stats/data_dir/$filename
        fi
        previous_date="$current_date"
        previous_tag="$tag"
    done



for dir in ~/kbd ~/history ~/linux-stable/linux-stable; do
    cd "$dir"
    previous_date=""
    previous_tag=""
    for tag in $(git tag | grep -vE '^[0-9]+\.' | sort -V); do
        current_date=$(git log --pretty=format:%cd --date=short -n 1 "$tag")
        if [ -n "$previous_date" ]; then
            duration=$(( ($(date -d "$current_date" +%s) - $(date -d "$previous_date" +%s)) / 86400 ))
            echo "$previous_tag to $tag - $duration days" >> ~/linux-kernel-stats/data_dir/$filename
        fi
        previous_date="$current_date"
        previous_tag="$tag"
    done
    for tag in $(git tag | grep -E 'rc[0-9]+' | sort -V); do
        current_date=$(git log --pretty=format:%cd --date=short -n 1 "$tag")
        if [ -n "$previous_date" ]; then
            duration=$(( ($(date -d "$current_date" +%s) - $(date -d "$previous_date" +%s)) / 86400 ))
            echo "$previous_tag to $tag - $duration days" >> ~/linux-kernel-stats/data_dir/$filename
        fi
        previous_date="$current_date"
        previous_tag="$tag"
    done
done

