#!/bin/bash
set -e

DIR=$HOME/Downloads
mkdir -p $DIR && cd $DIR

sudo apt update && sudo apt install -y bzip2
wget https://repo.anaconda.com/archive/Anaconda3-2018.12-Linux-x86_64.sh
bash Anaconda3-2018.12-Linux-x86_64.sh -b -f

cp $HOME/.bashrc $HOME/.bashrc_backup
echo "##### Add Anaconda bindings to PATH #####" >> $HOME/.bashrc
echo ". $HOME/anaconda3/etc/profile.d/conda.sh" >> ~/.bashrc
source $HOME/.bashrc
