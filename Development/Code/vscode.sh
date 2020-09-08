#!/usr/bin/env bash

rm -f code*
aria2c "https://update.code.visualstudio.com/latest/linux-deb-x64/stable"
VSCODE_PACKAGE=code*

sudo apt install -y ./$VSCODE_PACKAGE

for EXTENSION in $(cat extensions.txt)
do
  code --install-extension $EXTENSION
done

