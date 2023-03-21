#!/bin/bash

set -e

CUR_DIR=$(dirname $(realpath -s "$0"))

if [ command -v zsh >/dev/null 2>&1 ]; then
	if [ -f ~/.zshrc ]; then
		rm ~/.zshrc
	fi
	ln -s $CUR_DIR/zsh/zshrc ~/.zshrc
elif
	echo >&1 "zsh is not installed. Skip."
fi

if [ command -v lvim >/dev/null 2>&1 ]; then
	if [ -f ~/.config/lvim/config.lua ]; then
		rm ~/.config/lvim/config.lua
	fi
	ln -s $CUR_DIR/lvim/config.lua ~/.config/lvim/config.lua
elif
	echo >&1 "lvim is not installed. Skip."
fi
