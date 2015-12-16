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

SCREEN=$(xrandr|grep ' connected'|tail -n 1|tr ' ' '\n'|head -n 1)

case $SCREEN in
  LVDS-0)
    xrandr --output LVDS-0 --primary --mode 1366x768
    ;;
  VGA-0)
    xrandr --output VGA-0 --primary --mode 1280x1024 \
      --output LVDS-0 --off
    ;;
  *)
    echo 'Oops!'
    exit 1
    ;;
esac

xset +fp ~/.fonts
xset +fp /usr/share/fonts/local/
xset fp rehash
xset -dpms
xset s off

[ -f ~/.Xresources ] && xrdb ~/.Xresources

[ -f ~/.xprops ] && . ~/.xprops

[ -x ~/.fehbg ] && ~/.fehbg

xsetroot -cursor_name left_ptr

sxhkd -f 100 &
compton -Cb &
wew | yawee

xwait
