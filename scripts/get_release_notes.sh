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
        elif [[ "$version" == "1.1" ]]; then
            wget  -q $base_url/v$version -O version.html 
            sub_versions=($(grep -oP "linux-[0-9]+\.[0-9]+\.[0-9]+\.tar+\.xz" version.html | sort -u |sed 's/linux-\([0-9.]\{1,\}\)\..*/\1/'))
            for sub_version in "${sub_versions[@]}"
            do
                # Construct the file name for the version
                file_name="linux-$sub_version.tar.gz"
                # Download the file for the version
                wget $base_url/v$version/$file_name
                # Unzip the file for the version
                tar -xzf $file_name
                # Change into the unzipped directory for the version
                cd linux-$sub_version
                # Copy the CHANGES file for the version
                if [ ! -d Documentation/Changes ]; then
                    cp linux/Documentation/Changes $dir_name/$version/sub_version.txt
                    cd ..
                    cd ..
                else
                    cp Documentation/Changes $dir_name/$version/sub_version.txt
                    cd ..
                fi
                # Remove the unzipped directory for the version
                rm -r linux-$version
                # Remove the downloaded file for the version
                rm $file_name
            done
            rm -r version.html
        fi
        elif [[ "$version" == "1.2" ]]; then
            wget  -q $base_url/v$version -O version.html 
            sub_versions=($(grep -oP "linux-[0-9]+\.[0-9]+\.[0-9]+\.tar+\.xz" version.html | sort -u |sed 's/linux-\([0-9.]\{1,\}\)\..*/\1/'))
            for sub_version in "${sub_versions[@]}"
            do
                # Construct the file name for the version
                file_name="linux-$sub_version.tar.gz"
                # Download the file for the version
                wget $base_url/v$version/$file_name
                # Unzip the file for the version
                tar -xzf $file_name
                # Change into the unzipped directory for the version
                cd linux-$sub_version
                # Copy the CHANGES file for the version
                if [ ! -d Documentation/Changes ]; then
                    cp linux/Documentation/Changes $dir_name/$version/sub_version.txt
                    cd ..
                    cd ..
                else
                    cp Documentation/Changes $dir_name/$version/sub_version.txt
                    cd ..
                fi
                # Remove the unzipped directory for the version
                rm -r linux-$version
                # Remove the downloaded file for the version
                rm $file_name
            done
            rm -r version.html
        fi
        elif [[ "$version" == "1.3" ]]; then
            wget  -q $base_url/v$version -O version.html 
            sub_versions=($(grep -oP "linux-[0-9]+\.[0-9]+\.[0-9]+\.tar+\.xz" version.html | sort -u |sed 's/linux-\([0-9.]\{1,\}\)\..*/\1/'))
            for sub_version in "${sub_versions[@]}"
            do
                # Construct the file name for the version
                file_name="linux-$sub_version.tar.gz"
                # Download the file for the version
                wget $base_url/v$version/$file_name
                # Unzip the file for the version
                tar -xzf $file_name
                # Change into the unzipped directory for the version
                cd linux-$sub_version
                # Copy the CHANGES file for the version
                if [ ! -d Documentation/Changes ]; then
                    cp linux/Documentation/Changes $dir_name/$version/sub_version.txt
                    cd ..
                    cd ..
                else
                    cp Documentation/Changes $dir_name/$version/sub_version.txt
                    cd ..
                fi
                # Remove the unzipped directory for the version
                rm -r linux-$version
                # Remove the downloaded file for the version
                rm $file_name
            done
            rm -r version.html
        fi
        elif [[ "$version" == "2.0" ]]; then
            wget  -q $base_url/v$version -O version.html 
            sub_versions=($(grep -oP "linux-[0-9]+\.[0-9]+\.[0-9]+\.tar+\.xz" version.html | sort -u |sed 's/linux-\([0-9.]\{1,\}\)\..*/\1/'))
            for sub_version in "${sub_versions[@]}"
            do
                # Construct the file name for the version
                file_name="linux-$sub_version.tar.gz"
                # Download the file for the version
                wget $base_url/v$version/$file_name
                # Unzip the file for the version
                tar -xzf $file_name
                # Change into the unzipped directory for the version
                cd linux-$sub_version
                # Copy the CHANGES file for the version
                if [ ! -d Documentation/Changes ]; then
                    cp linux/Documentation/Changes $dir_name/$version/sub_version.txt
                    cd ..
                    cd ..
                else
                    cp Documentation/Changes $dir_name/$version/sub_version.txt
                    cd ..
                fi
                # Remove the unzipped directory for the version
                rm -r linux-$version
                # Remove the downloaded file for the version
                rm $file_name
            done
            rm -r version.html
        fi
        elif [[ "$version" == "2.1" ]]; then
            wget  -q $base_url/v$version -O version.html 
            sub_versions=($(grep -oP "linux-[0-9]+\.[0-9]+\.[0-9]+\.tar+\.xz" version.html | sort -u |sed 's/linux-\([0-9.]\{1,\}\)\..*/\1/'))
            for sub_version in "${sub_versions[@]}"
            do
                # Construct the file name for the version
                file_name="linux-$sub_version.tar.gz"
                # Download the file for the version
                wget $base_url/v$version/$file_name
                # Unzip the file for the version
                tar -xzf $file_name
                # Change into the unzipped directory for the version
                cd linux-$sub_version
                # Copy the CHANGES file for the version
                if [ ! -d Documentation/Changes ]; then
                    cp linux/Documentation/Changes $dir_name/$version/sub_version.txt
                    cd ..
                    cd ..
                else
                    cp Documentation/Changes $dir_name/$version/sub_version.txt
                    cd ..
                fi
                # Remove the unzipped directory for the version
                rm -r linux-$version
                # Remove the downloaded file for the version
                rm $file_name
            done
            rm -r version.html
        fi
        elif [[ "$version" == "2.3" ]]; then
            wget  -q $base_url/v$version -O version.html 
            sub_versions=($(grep -oP "linux-[0-9]+\.[0-9]+\.[0-9]+\.tar+\.xz" version.html | sort -u |sed 's/linux-\([0-9.]\{1,\}\)\..*/\1/'))
            for sub_version in "${sub_versions[@]}"
            do
                # Construct the file name for the version
                file_name="linux-$sub_version.tar.gz"
                # Download the file for the version
                wget $base_url/v$version/$file_name
                # Unzip the file for the version
                tar -xzf $file_name
                # Change into the unzipped directory for the version
                cd linux-$sub_version
                # Copy the CHANGES file for the version
                if [ ! -d Documentation/Changes ]; then
                    cp linux/Documentation/Changes $dir_name/$version/sub_version.txt
                    cd ..
                    cd ..
                else
                    cp Documentation/Changes $dir_name/$version/sub_version.txt
                    cd ..
                fi
                # Remove the unzipped directory for the version
                rm -r linux-$version
                # Remove the downloaded file for the version
                rm $file_name
            done
            rm -r version.html
        fi
        else
            wget  -q $base_url/v$version -O version.html 
            sub_versions=($(grep -o 'ChangeLog-[0-9]\{1,\}\.[0-9]\{1,\}\.[0-9]\{1,\}' version.html |sed 's/ChangeLog-//g'  | sort -u))
            n=${#sub_versions[@]} 
            # echo $n
            for sub_version in "${sub_versions[@]}"
            do
                wget -q $base_url/v$version/ChangeLog-$sub_version -O $dir_name/$version/$sub_version.txt
            done
            rm -r version.html
        echo "Release Notes stored in $dir_name/$version/"
        # echo ""
        fi
    done
