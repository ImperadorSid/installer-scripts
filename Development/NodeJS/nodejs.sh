#!/usr/bin/env bash

NODE_ROOT=~/.local/node
NODE_BIN=$NODE_ROOT/bin
YARN_BIN=~/.yarn/bin

rm -rf node*z $NODE_ROOT ~/.npm ~/.{,{cache,config}/}yarn*

LATEST_VERSION=$(curl -s https://nodejs.org/dist/index.json | jq -r '.[0].version')
aria2c "https://nodejs.org/dist/latest/node-$LATEST_VERSION-linux-x64.tar.xz"

tar xvf node-$LATEST_VERSION-linux-x64.tar.xz -C ~/.local --one-top-level=node --strip-components=1

CUR_PATH=$(fish -c 'echo $fish_user_paths')
[[ "$CUR_PATH" != *"$NODE_BIN"* ]] && fish -c "set -p fish_user_paths $NODE_BIN"
[[ "$CUR_PATH" != *"$YARN_BIN"* ]] && fish -c "set -p fish_user_paths $YARN_BIN"

PATH=$NODE_BIN:$PATH
$NODE_BIN/npm install --global yarn
$NODE_BIN/yarn global add $(cat packages.txt)
$NODE_BIN/yarn config set init-author-name 'Moisés Carvalho' -g
$NODE_BIN/yarn config set init-author-email 'moisescarv27@hotmail.com' -g

