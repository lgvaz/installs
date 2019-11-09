#!/bin/bash
set -e

DIR=$HOME/Downloads
CONDA=Anaconda3-2019.10-Linux-x86_64.sh
mkdir -p $DIR && cd $DIR

apt-get install -y bzip2
wget https://repo.anaconda.com/archive/$CONDA
bash $CONDA -b -f

echo "##### Add Anaconda bindings to PATH #####" >> $HOME/.bashrc
echo ". $HOME/anaconda3/etc/profile.d/conda.sh" >> $HOME/.bashrc
source $HOME/.bashrc

conda update -n base -c defaults conda
