#!/usr/bin/env bash

INSTALL_DIR=~/.local
BASIC_TOOLS_PATH=$INSTALL_DIR/android-sdk/cmdline-tools
CMDLINETOOLS_ARCHIVE=command*
FLUTTER_ARCHIVE=flutter_linux*
USER_BIN_DIR=~/.local/bin

mkdir -p $BASIC_TOOLS_PATH

tar xvf $FLUTTER_ARCHIVE -C $INSTALL_DIR
unzip $CMDLINETOOLS_ARCHIVE -d $BASIC_TOOLS_PATH
mv $BASIC_TOOLS_PATH/tools $BASIC_TOOLS_PATH/latest

ln -s ~/.local/android-sdk/platform-tools/adb $USER_BIN_DIR
ln -s ~/.local/android-sdk/cmdline-tools/latest/bin/sdkmanager $USER_BIN_DIR
ln -s ~/.local/flutter/bin/flutter $USER_BIN_DIR

$BASIC_TOOLS_PATH/latest/bin/sdkmanager "build-tools;28.0.3" "emulator" "platform-tools" "platforms;android-28" "system-images;android-29;google_apis;x86"
