#!/usr/bin/env bash

rm -f node*z
LATEST_VERSION=$(curl -s https://nodejs.org/dist/index.json | jq -r '.[0].version')

aria2c "https://nodejs.org/dist/latest/node-$LATEST_VERSION-linux-x64.tar.xz"

tar xvf node-$LATEST_VERSION-linux-x64.tar.xz -C ~/.local --one-top-level=node --strip-components=1

CUR_PATH=$(fish -c 'echo $fish_user_paths')
NODE_BIN=/home/impsid/.local/node/bin
[[ "$CUR_PATH" != *"$NODE_BIN"* ]] && fish -c "set -p fish_user_paths $NODE_BIN"

PATH=$NODE_BIN:$PATH
$NODE_BIN/npm i -g $(cat packages.txt)

