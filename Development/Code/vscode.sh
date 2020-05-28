#!/usr/bin/env bash

rm -f code*
aria2c "https://update.code.visualstudio.com/latest/linux-deb-x64/stable"
VSCODE_PACKAGE=code*

sudo apt install -y ./$VSCODE_PACKAGE
code --install-extension Dart-Code.flutter
code --install-extension dracula-theme.theme-dracula
code --install-extension ms-python.python
code --install-extension pkief.material-icon-theme
code --install-extension ritwickdey.liveserver
code --install-extension skyapps.fish-vscode
code --install-extension ms-vscode.cpptools

