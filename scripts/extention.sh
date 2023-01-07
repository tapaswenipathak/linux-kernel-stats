#!/bin/bash

SRCDIR=~/linux-stable/linux-stable

find $SRCDIR -type d -name .git -prune -o -type f | sed -n -e 's/^.*\.\([a-zA-Z]*\)$/\1/p' | sort | uniq -c | sort -nr
