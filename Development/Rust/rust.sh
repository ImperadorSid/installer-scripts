#!/usr/bin/env bash

curl -s https://sh.rustup.rs | sh -s -- --no-modify-path -y

CUR_PATH=$(fish -c 'echo $fish_user_paths')
CARGO_BIN=~/.cargo/bin
[[ "$CUR_PATH" != *"$CARGO_BIN"* ]] && fish -c "set -p fish_user_paths $CARGO_BIN"

# Prerequisites for "alacritty"
apt install cmake libfontconfig-dev libxcb-{render,shape,xfixes}0-dev

$CARGO_BIN/cargo install $(cat packages.txt)

