#!/bin/bash

# Removes .nanorc from the home directory
rm -f ~/.nanorc

# Removes the line 'source ~/.dotfiles/etc/bashrc_custom' from .bashrc
sed -i '/source ~\/\.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc

# Remove the .TRASH directory inside of the home directory
rm -rf ~/".TRASH"
