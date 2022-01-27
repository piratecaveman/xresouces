#!/usr/bin/bash

for file in /etc/X11/xinit/xinitrc.d/*.sh; do
    # shellcheck disable=SC1090
    source "${file}"
done
eval "$(ssh-agent)"
export AWT_TOOLKIT=MToolkit
export GTK_IM_MODULE=ibus
export XMODIFIER=@im=ibus
export QT_IM_MODULE=ibus
export SHELL_UTILS="${HOME}/.config/shell-utils"
export XRESOURCES="${HOME}/.config/xresources"
exec bspwm
