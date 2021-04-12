#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

SUBDIRS=(bash vim tmux git misc)

for i in ${SUBDIRS[@]}; do
    cp "$DIR"/"$i"/.* ~ &> /dev/null
done

# Powershell is in a weird place
cp powershell/profile.ps1 ~/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1

exit 0
