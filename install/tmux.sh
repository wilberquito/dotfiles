#!/bin/bash

# ██████╗ ███████╗ █████╗ ██████╗ ███╗   ███╗███████╗
# ██╔══██╗██╔════╝██╔══██╗██╔══██╗████╗ ████║██╔════╝
# ██████╔╝█████╗  ███████║██║  ██║██╔████╔██║█████╗
# ██╔══██╗██╔══╝  ██╔══██║██║  ██║██║╚██╔╝██║██╔══╝
# ██║  ██║███████╗██║  ██║██████╔╝██║ ╚═╝ ██║███████╗
# ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝╚══════╝
#
# Author: wilberquito
# License: WTFPL
# Description:
# 	- Install tmux
# Requirements:
# 	- dnf

if test ! $(which tmux)
then
	echo "	Installing tmux for you."
	dnf -y install tmux
fi


TPM="~/.tmux/plugins/tpm/"

if [ ! -d "$TPM" ]
then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

exit 0
