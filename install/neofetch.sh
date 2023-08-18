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
# 	- Install Neofetch
# Requirements:
# 	- dnf

if test ! $(which neofetch)
then
	echo "	Installing Neofetch for you."
	dnf -y install neofetch
fi

exit 0
