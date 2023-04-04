#!/bin/bash
##Check Operating System
if [ "$(uname)" != "Linux" ]; then
echo "Error: This script is designed for Linux only." >> linuxsetup.log
exit 1
fi

##Create .TRASH
if[! -d"~/.TRASH"]; then
mkdir "~/.TRASH"
fi

##Rename .vimrc
if[ -f "~/.vimrc" ]; then
mv "~/.vimrc" "~/.bup vimrc"
echo "The current .vimrc file was changed to .bup vimrc." >> linuxsetup.log
fi

##Overwrite etc/vimrc to .vimrc
cat /etc/vimrc > "~/.vimrc"

##Add statement to .bashrc
echo "source ~/.dotfiles/etc/bashrccustom" >> "~/.bashrc"

