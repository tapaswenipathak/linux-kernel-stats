#!/bin/bash

SRCDIR=~/linux-stable/linux-stable
cd $SRCDIR

spinlock_keywords=("spinlock" "spinlock_t" "rwlock_t" "ticket_spin_lock" "raw_spinlock_t" "qspinlock" "ticket_spin_trylock" "ticket_spin_unlock" "read_lock" "ticket_spin_is_locked" "read_trylock" "read_unlock" "write_lock" "write_trylock" "write_unlock" "raw_spin_lock"
    "raw_spin_trylock" "raw_spin_unlock" "raw_spin_lock_irq" "raw_spin_lock_irqsave" "raw_spin_unlock_irq"  "raw_spin_unlock_irqrestore" "spin_lock" "spin_trylock" "spin_unlock" "spin_lock_irq" "spin_lock_irqsave" "spin_unlock_irq" "spin_unlock_irqrestore")

for ((i=3; i<=6; i++)); do
    git checkout -fq v$i.0
    for k in ${spinlock_keywords[@]}; do
        git log --all --grep=$k
    done
done
