#!/usr/bin/env bash

SDK_HOME=~/.local/android-sdk
CLI_PATH=$SDK_HOME/cmdline-tools
CMDLINETOOLS_ARCHIVE=command*

mkdir -p $CLI_PATH

unzip $CMDLINETOOLS_ARCHIVE -d $CLI_PATH

ln -sf $CLI_PATH/tools/bin/sdkmanager ~/.local/bin
ln -sf $CLI_PATH/tools/bin/avdmanager ~/.local/bin
ln -sf $SDK_HOME/emulator/emulator ~/.local/bin
ln -sf $SDK_HOME/platform-tools/adb ~/.local/bin

$CLI_PATH/tools/bin/sdkmanager "emulator" "system-images;android-30;google_apis;x86" "platform-tools"
mkdir -p $SDK_HOME/platforms

