#!/bin/bash

set -e

CUR_DIR=$(dirname $(realpath -s "$0"))


command -v zsh >/dev/null 2>&1
if [ "$?" -eq 0 ]; then
	if [ -f ~/.zshrc ]; then
		rm ~/.zshrc
	fi
	ln -s $CUR_DIR/zsh/zshrc ~/.zshrc
else
  echo "zsh is not installed. Skip."
fi

command -v lvim >/dev/null 2>&1
if [ "$?" -eq 0 ]; then
	if [ -f ~/.config/lvim/config.lua ]; then
		rm ~/.config/lvim/config.lua
	fi
	ln -s $CUR_DIR/lvim/config.lua ~/.config/lvim/config.lua
else
	echo "lvim is not installed. Skip."
fi
