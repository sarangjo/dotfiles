#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

cp "$DIR"/bash/.* ~ &> /dev/null
cp "$DIR"/vim/.* ~ &> /dev/null
cp "$DIR"/tmux/.* ~ &> /dev/null
cp "$DIR"/git/.* ~ &> /dev/null

exit 0
