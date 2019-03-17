#!bin/bash
set -e

pip install jupyterthemes
pip install jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
pip install jupyter_nbextensions_configurator
jupyter nbextensions_configurator enable --user

jt -t onedork
