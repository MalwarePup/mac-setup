#!/usr/bin/env bash

NPM_PACKAGES=(
	opencommit
)

# Sudo keep-alive
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

which -s brew
if [[ $? != 0 ]]; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
	brew update
fi


brew cleanup

# npm install -g ${NPM_PACKAGES[@]}

# echo "Setting up Git"
# git config --global core.editor "vim"
# git config --global user.name "MalwarePup"
# git config --global user.email "71011961+MalwarePup@users.noreply.github.com"

