#!/bin/bash
if [ ! -d "/usr/bin/zsh" ]; then
	echo "Getting zsh.."
	sudo apt install zsh -y
	echo "Setting as default shell.."	
	chsh -s $(which zsh)
else
	echo "zsh already found, skipping."
fi

