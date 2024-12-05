#!/bin/bash
# sheebang

#checks if the vairable uname is not linux 
if [ "$(uname)" != "Linux" ]; then
	echo "Error: This is only Linux allowed" >> linuxsetup.log
	exit 1
#if it is not linux runs the above command
else 
	echo "Linux system. Proceeding with program"
#runs the program
fi

if [ ! -d "$HOME/.TRASH" ]; then
	mkdir "$HOME/.TRASH"
# checks the home directory for the directory .TRASH
else
	echo "Directory, .TRASH, already exists"
fi

file="$HOME/.nanorc"
#variable file is the path to the .nanorc

if [ -f "$file" ]; then
	mv "$file" "$HOME/.bup_nanorc" 
	##if file rename it to .bup_nanorc
	echo "The filenamed '.nanorc' was renamed to .bup_nanorc" >> linuxsetup.log
fi

if [ -f "./etc/nanorc" ]; then
	cp ./etc/nanorc "$HOME/.nanorc"
	##copies the contents of the ./etc/nanorc into the home directory .nanorc
else 
	echo "Source file not found" >> linuxsetup.log
	exit 1
fi

echo "source ~/.dotfiles/etc/bashrc_custom" >> "$HOME/.bashrc"
# adding the source file into the end of the home direcoty .bashrc
