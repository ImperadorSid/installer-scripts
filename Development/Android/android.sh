#!/usr/bin/env bash

INSTALL_DIR=~/.local
BASIC_TOOLS_PATH=$INSTALL_DIR/android-sdk/cmdline-tools
CMDLINETOOLS_ARCHIVE=command*
USER_BIN_DIR=~/.local/bin

mkdir -p $BASIC_TOOLS_PATH

unzip $CMDLINETOOLS_ARCHIVE -d $BASIC_TOOLS_PATH
mv $BASIC_TOOLS_PATH/tools $BASIC_TOOLS_PATH/latest

ln -s ~/.local/android-sdk/platform-tools/adb $USER_BIN_DIR
ln -s ~/.local/android-sdk/cmdline-tools/latest/bin/sdkmanager $USER_BIN_DIR

$BASIC_TOOLS_PATH/latest/bin/sdkmanager "build-tools;30.0.2" "emulator" "platform-tools" "platforms;android-30" "system-images;android-30;google_apis;x86"
