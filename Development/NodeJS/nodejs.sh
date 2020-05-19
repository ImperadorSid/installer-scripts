#!/usr/bin/env bash

curl -L https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install -y nodejs

sudo npm install -g @angular/cli arch-wiki-man
