#!/bin/bash

# Appends any output from echo to 'linuxsetup.log'
exec >> linuxsetup.log 2>&1

# Checks if operating system is Linux
if [[ $(uname) != "Linux" ]]; then
	echo "ERROR: This script only works on Linux."
	exit 1
fi

# Creates '.TRASH' directory in the home directory
mkdir -p ~/".TRASH"

# If '.nanorc' exists in home directory, change to 'bup.nanorc'
if [[ -f ~/.nanorc ]]; then
	mv ~/.nanorc ~/.bup_nanorc
	echo "'.nanorc' was changed to '.bup_nanorc'."
fi

# Overwites etc/nanorc to .nanorc in home directory
cp /etc/nanorc ~/.nanorc

# Adds the statement to the end of .bashrc found in the home directory
echo "source ~/.dotfiles/etc/bachrc_custom" >> ~/.bashrc
