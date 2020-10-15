#!/usr/bin/env bash

SDK_HOME=~/.local/android-sdk
INSTALL_PATH=$SDK_HOME/cmdline-tools
CMDLINETOOLS_ARCHIVE=command*

mkdir -p $INSTALL_PATH

unzip $CMDLINETOOLS_ARCHIVE -d $INSTALL_PATH

ln -sf $INSTALL_PATH/tools/bin/sdkmanager ~/.local/bin
ln -sf $INSTALL_PATH/tools/bin/avdmanager ~/.local/bin
ln -sf $SDK_HOME/emulator/emulator ~/.local/bin

$INSTALL_PATH/tools/bin/sdkmanager "emulator" "system-images;android-30;google_apis;x86" "platform-tools"
mkdir $SDK_HOME/platforms

