#!/bin/bash

#Contributor: tapaswenipathak@gmail.com

if ! command -v glimpseindex &> /dev/null
then
    echo "glimpseindex command not found. Please install glimpseindex and try again."
    exit 1
fi

if [ ! -z $1 ]; then
    DIR=$1
else
    DIR=`pwd`
fi

pushd $DIR
echo Indexing in $DIR
find * -name "*.[ch]" | glimpseindex -o -H $DIR -F
popd
