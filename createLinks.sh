#!/bin/bash

DOTFILESROOT=$HOME/dotfiles

function createLink {
	SOURCE=$1
	DESTINATION=$2

	if [[ -e $DESTINATION ]]; then
		echo "Destination exists, backup"
		mv -f $DESTINATION $DESTINATION.bak
	fi

	DEST_BASEDIR=$( dirname $DESTINATION )
	echo "basedir of destination: $DEST_BASEDIR"
	mkdir -p $DEST_BASEDIR

	echo "Create Symlink: $DESTINATION -> $SOURCE"
	ln -sv $SOURCE $DESTINATION

}

#createLink "$DOTFILESROOT/zsh/zshrc" "$HOME/.zshrc"

createLink "$DOTFILESROOT/tmux/tmux.conf" "$HOME/.tmux.conf"

#createLink "$DOTFILESROOT/nvim" "$HOME/.config/nvim"











exit 0;




