#!/bin/bash

if [ -f "$HOME/.nanorc" ]; then
	rm "$HOME/.nanorc"
	##removes the .nanorc in the home directory
	echo "File has been removed"
else
	##if it doesnt exist
	echo "file did not exist" 

fi

#checking for a specific line in our .bashrc file
if grep -q "source ~/.dotfiles/etc/bashrc_custom" "$HOME/.bashrc"; then
	#if the specific line is found remove it
	sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d'  "$HOME/.bashrc"
	echo "source file has been removed"
else
	echo "source file not found"
fi
# if .TRASh directory is found in our home directory remove it.
if [ -d "$HOME/.TRASH" ]; then
	rm -r "$HOME/.TRASH"
	echo "Trash has been removed"
else
	echo "Trash not found"
	#if not print out trash not found
fi


