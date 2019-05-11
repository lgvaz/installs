#!bin/bash
set -e

# Install jupyter notebook and configure to accessible via internet
conda install -y -c anaconda jupyter
jupyter notebook --generate-config
echo "c.NotebookApp.ip = '0.0.0.0'" >> $HOME/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.port = 8888" >> $HOME/.jupyter/jupyter_notebook_config.py

# Themes and extensions
pip install jupyterthemes
pip install jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
pip install jupyter_nbextensions_configurator
jupyter nbextensions_configurator enable --user

jt -t onedork -cellw 1280
