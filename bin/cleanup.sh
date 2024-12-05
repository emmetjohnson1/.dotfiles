#!/bin/bash

if [ -f "$HOME/.nanorc" ]; then
	rm "$HOME/.nanorc"
	echo "File has been removed"
else
	echo "file did not exist" 

fi


if grep -q "source ~/.dotfiles/etc/bashrc_custom" "$HOME/.bashrc"; then
	sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d'  "$HOME/.bashrc"
	echo "source file has been removed"
else
	echo "source file not found"
fi

if [ -d "$HOME/.TRASH" ]; then
	rm -r "$HOME/.TRASH"
	echo "Trash has been removed"
else
	echo "Trash not found"
fi


