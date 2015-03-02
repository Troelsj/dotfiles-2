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
xset +fp ~/.fonts
xset fp rehash
~/.fehbg
xsetroot -cursor_name left_ptr

# [[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[[ -f ~/.Xresources ]] && xrdb ~/.Xresources

pamixer --set-volume $(cat ~/.volume)
pamixer --unmute

xset -dpms
xset s off

$(export_colors)

sxhkd -f 100 &
compton -cb &
#~/.config/bspwm/panel 2>/dev/null &
bspwm_wrapper
