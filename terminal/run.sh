#!/bin/bash
set -e


PROFILE=$1
: ${PROFILE:=~/.bashrc}
echo "Appending to "$PROFILE

cp files/.git-completion.bash ~/.git-completion.bash
cp files/.git-prompt.sh ~/.git-prompt.sh

touch "$PROFILE"
cat files/.bashrc >> "$PROFILE"

