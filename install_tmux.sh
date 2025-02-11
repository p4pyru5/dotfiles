#! /usr/bin/bash

USER=${USER:-$(id -u -n)}
# $HOME is defined at the time of login, but it could be unset. If it is unset,
# a tilde by itself (~) will not be expanded to the current user's home directory.
# POSIX: https://pubs.opengroup.org/onlinepubs/009696899/basedefs/xbd_chap08.html#tag_08_03
HOME="${HOME:-$(getent passwd $USER 2>/dev/null | cut -d: -f6)}"

echo "Installing package tmux, this might ask for sudo password..."
sudo apt-get install -y tmux

ln -s -i ${HOME}/dotfiles/tmux/tmux.conf ${HOME}/.tmux.conf

if [ ! -d "${HOME}/bin" ]; then
	mkdir -p ${HOME}/bin
fi
ln -s -i ${HOME}/dotfiles/tmux/tm ${HOME}/bin/tm

# Prepare for install the tmux plugin manager
if [ ! -d "${HOME}/.tmux/plugins" ]; then
	mkdir -p ${HOME}/.tmux/plugins
	git clone https://github.com/tmux-plugins/tpm ${HOME}/.tmux/plugins/tpm
fi

