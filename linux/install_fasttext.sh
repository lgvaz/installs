#!/bin/bash
set -e 

sudo apt update && sudo apt install -y clang

# Install fastText
mkdir -p $HOME/libs && cd $HOME/libs
git clone https://github.com/facebookresearch/fastText.git
cd fastText && make

# Clone model
mkdir -p $HOME/models/fastText && cd $HOME/models/fastText
wget https://dl.fbaipublicfiles.com/fasttext/vectors-crawl/cc.en.300.bin.gz

# Create shortcut
echo "##### Add fasttext shortcut ####" >> $HOME/.bashrc
echo "alias fasttext=$HOME/libs/fastText/fasttext" >> $HOME/.bashrc
echo "################################" >> $HOME/.bashrc
source $HOME/.bashrc
