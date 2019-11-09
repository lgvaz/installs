#!/bin/bash
set -e

DIR=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

PROFILE=$1
: ${PROFILE:=$HOME/.bashrc}
echo "Appending to "$PROFILE

cp $DIR/files/.git-completion.bash $HOME/.git-completion.bash
cp $DIR/files/.git-prompt.sh $HOME/.git-prompt.sh

touch "$PROFILE"
cat $DIR/files/.bashrc >> "$PROFILE"
