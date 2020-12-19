#!/usr/bin/env bash

SDK_HOME=~/.local/android-sdk
CMDLINE_ARCHIVE=command*
CMDLINE_ROOT=$SDK_HOME/cmdline-tools
CMDLINE_BIN_PATH=$SDK_HOME/cmdline-tools/latest/bin

mkdir -p $CMDLINE_ROOT

unzip -q $CMDLINE_ARCHIVE -d $CMDLINE_ROOT
mv $CMDLINE_ROOT/{cmdline-tools,latest}

ln -sf $CMDLINE_BIN_PATH/sdkmanager ~/.local/bin
ln -sf $CMDLINE_BIN_PATH/avdmanager ~/.local/bin
ln -sf $SDK_HOME/emulator/emulator ~/.local/bin
ln -sf $SDK_HOME/platform-tools/adb ~/.local/bin

cp -r additional/. $SDK_HOME

$CMDLINE_BIN_PATH/sdkmanager "system-images;android-30;google_apis_playstore;x86"

