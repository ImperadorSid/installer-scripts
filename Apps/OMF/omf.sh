#!/usr/bin/env bash

aria2c --allow-overwrite -o omf-installer https://oh-my.fish
chmod u+x omf-installer
./omf-installer --noninteractive -y --path=~/.local/omf
