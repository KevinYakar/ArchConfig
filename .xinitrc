#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# add resolution and set up monitors
xrandr --output DP-0 --mode 2560x1440 --rate 144 --primary
xrandr --output DP-4 --mode 1920x1080 --rate 144 --left-of DP-0

# Wallpaper
nitrogen --restore &

# Cursor size
xrdb -merge ~/.Xresources

# Compositor
picom &

# start sxhkd
sxhkd &

# Execute DWM
exec dwm

