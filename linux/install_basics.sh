#!/bin/bash

sudo apt-get install -y git tmux htop wget g++ clang make xfsprogs unzip

git config --global user.name "Lucas Vazquez"
git config --global user.email lucasgouvaz@gmail.com

# Install vscode remote
#mkdir -p $HOME/tools && cd $HOME/tools
#CODE_SERVER_BINARY="code-server1.696-vsc1.33.0-linux-x64.tar.gz"
#wget "https://github.com/codercom/code-server/releases/download/1.696-vsc1.33.0/"$CODE_SERVER_BINARY 
#tar -xf $CODE_SERVER_BINARY 
#mv $CODE_SERVER_BINARY code-server

# Create shortcut
#echo "##### Add code-server shortcut ####" >> $HOME/.bashrc
#echo "alias code-server=$HOME/tools/code-server/$CODE_SERVER_BINARY/code-server" >> $HOME/.bashrc
#echo "###################################" >> $HOME/.bashrc
#source $HOME/.bashrc

