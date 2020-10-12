#!/usr/bin/env bash

sudo apt install cmake libfontconfig-dev libxcb-{render,shape,xfixes}0-dev

cargo install alacritty

sudo apt remove {gnome,mate}-terminal
sudo ln -sf ~/.local/scripts/alacritty-wrapper.fish /usr/bin/gnome-terminal
sudo ln -sf ~/.local/scripts/alacritty-wrapper.fish /usr/bin/mate-terminal

