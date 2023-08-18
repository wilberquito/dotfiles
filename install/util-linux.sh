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
# 	- Standard package for all linux system
# Requirements:
# 	- dnf

if test ! $(which util-linux-user)
then
	echo "	Installing util-linux-user for you."
	dnf -y install util-linux-user
fi

exit 0
