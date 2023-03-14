#!/bin/bash

#displays the names of files consisting all types of spinlock in linux kernel v3.0 to v6.0
# Contributor: kavita23meena.2002@gmail.com

SRCDIR=~/linux-stable/linux-stable
cd $SRCDIR

for ((i=3; i<=6; i++)); do
    git checkout -fq v$i.0
    echo v$i.0; echo 
    grep -rl "spinlock"; echo 
    echo "Files consisting Interrupt safe spinlock"
    grep -rl "spinlock_t"; echo 
    echo "Files consisting Read-write spinlock"
    grep -rl "rwlock_t "; echo 
    echo "Files consisting Queued spinlock"
    grep -rl "queued_spin_lock_t"; echo
    echo "Files consisting Raw spinlock"
    grep -rl "raw_spinlock_t"
done