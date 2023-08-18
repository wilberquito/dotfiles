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
# 	- Install git
# Requirements:
# 	- dnf

if test ! $(which git)
then
	echo "	Installing git for you."
	dnf install git
fi

exit 0
