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

if [[ `xrandr -q | grep ' connected ' | wc -l` -gt 1 ]]; then
	xrandr --output LVDS1 --auto --primary # --off
	xrandr --output VGA1 --right-of LVDS1 # --auto --primary
else
	xrandr --output LVDS1 --auto --primary
fi

xset +fp ~/.fonts
xset +fp /usr/share/fonts/local/
xset fp rehash
xset -dpms
xset s off

[[ -f ~/.Xresources ]] && xrdb ~/.Xresources

~/.fehbg

xsetroot -cursor_name left_ptr

pamixer --set-volume $(cat ~/.volume)
pamixer --unmute

mpd ~/.config/mpd/conf

#dunst &
sxhkd -f 100 &
compton -b &
exec bspwm
