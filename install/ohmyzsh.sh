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
# 	- Install a framework for managing zsh plugins.
# 	- At the same time it install a bunch of plugins.
# Requirements:
# 	- curl
# 	- git


ZSH="$HOME/.oh-my-zsh"

if [ ! -d "$ZSH" ]
then
  echo 'zsh'
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

ZSHAUTOSUGGESTIONS=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

if [ ! -d "$ZSHAUTOSUGGESTIONS" ]
then
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi
