#!/bin/bash

if [ "$(uname)" != "Linux" ]; then
	echo "Error: This is only Linux allowed" >> linuxsetup.log
	exit 1
else 
	echo "Linux system. Proceeding with program"
fi

if [ ! -d "$HOME/.TRASH" ]; then
	mkdir "$HOME/.TRASH"
else
	echo "Directory, .TRASH, already exists"
fi

file="$HOME/.nanorc"

if [ -f "$file" ]; then
	mv "$file" "$HOME/.bup_nanorc"
	echo "The filenamed '.nanorc' was renamed to .bup_nanorc" >> linuxsetup.log
fi

if [ -f "./etc/nanorc" ]; then
	cp ./etc/nanorc "$HOME/.nanorc"
else 
	echo "Source file not found" >> linuxsetup.log
	exit 1
fi

echo "source ~/.dotfiles/etc/bashrc_custom" >> "$HOME/.bashrc"

