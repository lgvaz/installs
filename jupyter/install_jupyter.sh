#!bin/bash
set -e

conda install -y -c anaconda jupyter

bash ./install_extensions.sh
