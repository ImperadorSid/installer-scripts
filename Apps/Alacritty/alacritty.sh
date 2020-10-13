#!/usr/bin/env bash

sudo apt install -y cmake libfontconfig-dev libxcb-{render,shape,xfixes}0-dev

cargo install alacritty

sudo apt purge -y {gnome,mate}-terminal
sudo ln -sf ~/.local/scripts/alacritty-wrapper.fish /usr/bin/gnome-terminal
sudo ln -sf ~/.local/scripts/alacritty-wrapper.fish /usr/bin/mate-terminal

