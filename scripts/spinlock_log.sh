#!/bin/bash

SRCDIR=~/linux-stable/linux-stable
cd $SRCDIR

for ((i=3; i<=6; i++)); do
    git checkout -fq v$i.0
    git log --all --grep="spinlock" 
    git log --all --grep="spinlock_t"
    git log --all --grep="rwlock_t"
    git log --all --grep="ticket_spin_lock"
    git log --all --grep="raw_spinlock_t" 
done