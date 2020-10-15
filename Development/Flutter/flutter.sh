#!/usr/bin/env bash

INSTALL_DIR=~/.local
FLUTTER_ARCHIVE=flutter_linux*
USER_BIN_DIR=~/.local/bin


tar xvf $FLUTTER_ARCHIVE -C $INSTALL_DIR

ln -s ~/.local/flutter/bin/flutter $USER_BIN_DIR

$BASIC_TOOLS_PATH/latest/bin/sdkmanager "build-tools;30.0.2" "platforms;android-30"

