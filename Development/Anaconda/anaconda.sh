#!/usr/bin/env bash

INSTALL_DIR=~/.local/anaconda3
ANACONDA_INSTALLER=Anaconda*
fish -c 'contains ~/.local/anaconda3/bin $fish_user_paths; or set -a fish_user_paths ~/.local/anaconda3/bin'

./$ANACONDA_INSTALLER -b -p $INSTALL_DIR

$INSTALL_DIR/bin/conda update -y --all
$INSTALL_DIR/bin/conda clean -y -a

$INSTALL_DIR/bin/pip install opencv-python asciinema
$INSTALL_DIR/bin/jupyter labextension install @karosc/jupyterlab_dracula

