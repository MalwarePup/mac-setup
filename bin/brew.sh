#!/usr/bin/env bash

# if brew is not installed, install it else update it
if ! which -s brew
then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
	brew update
fi

brew analytics off

brew bundle install --file=config/Brewfile
