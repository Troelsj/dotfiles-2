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

xset +fp ~/.fonts
xset fp rehash
xset -dpms
xset s off

~/.fehbg

xsetroot -cursor_name left_ptr

[[ -f ~/.Xresources ]] && xrdb ~/.Xresources

pamixer --set-volume $(cat ~/.volume)
pamixer --unmute

sxhkd -f 100 &
compton -cb &
bspwm_wrapper
