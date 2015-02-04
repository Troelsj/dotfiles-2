#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xset +fp /usr/share/fonts/local
xset fp rehash

# [[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[[ -f ~/.Xresources ]] && xrdb ~/.Xresources

wmname LG3D

pamixer --set-volume $(cat ~/.volume)
pamixer --unmute

sxhkd &
bspwm -c ~/.config/bspwm/bspwmrc &
compton -cb &
~/.fehbg &
~/.config/bspwm/panel 2>/dev/null
