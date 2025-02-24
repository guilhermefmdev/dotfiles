#!/bin/bash
if [ ! -d "$HOME/zsh-autocomplete" ]; then
	echo "Installing zsh-autocomplete.."
	git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git
else
	echo "zsh-autocomplete already installed."

fi
