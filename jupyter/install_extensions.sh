#!bin/bash
set -e

# Install jupyter notebook and configure to accessible via internet
# conda install -y -c anaconda jupyter
# jupyter notebook --generate-config
# echo "c.NotebookApp.ip = '0.0.0.0'" >> $HOME/.jupyter/jupyter_notebook_config.py
# echo "c.NotebookApp.port = 8888" >> $HOME/.jupyter/jupyter_notebook_config.py

# Themes and extensions
conda install -c conda-forge jupyter_contrib_nbextensions
pip install jupyterthemes
jt -t onedork -cellw 100%
