#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

SUBDIRS=(bash vim tmux git misc)

for i in ${SUBDIRS[@]}; do
    cp "$DIR"/"$i"/.* ~ &> /dev/null
done

exit 0
