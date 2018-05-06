#!/bin/bash

# export variables
export RESTIC_REPOSITORY=""
export RESTIC_PASSWORD=""

# config
BACKUP="{/etc,/home/}"
IGNORE="{/home/*/.cache}"

# backup
restic backup -e $IGNORE $BACKUP

# check
restic check

# forget
restic forget --keep-daily 1 

# prune
restic prune

unset RESTIC_REPOSITORY
unset RESTIC_PASSWORD

