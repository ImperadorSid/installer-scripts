#!/usr/bin/env bash

export NVM_DIR=~/.local/nvm
NODE_BIN=$NODE_DIR/bin
YARN_BIN=~/.yarn/bin

rm -rf $NVM_DIR ~/.npm ~/.{,{cache,config}/}yarn*

aria2c --allow-overwrite -d . -o nvm-installer https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh
mkdir $NVM_DIR
./nvm-installer

source $NVM_DIR/nvm.sh
CUR_PATH=$(fish -c 'echo $fish_user_paths')
[[ "$CUR_PATH" != *"$YARN_BIN"* ]] && fish -c "set -p fish_user_paths $YARN_BIN"

for version in 'node' '12' '14'
do
  nvm install $version
  npm install --global yarn
done

yarn global add $(cat yarn-packages.txt)
yarn config set init-author-name 'Moisés Carvalho' -g
yarn config set init-author-email 'moisescarv27@hotmail.com' -g

