#!/usr/bin/env bash

aria2c --allow-overwrite "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
CHROME_PACKAGE=google*

sudo apt install -y ./$CHROME_PACKAGE
