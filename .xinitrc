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
fi

if [ -f "$userresources" ]; then







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

# Allowing local to connect to the X Server
xhost +local:

# Keyboard Layout
setxkbmap us &

# Keyboard Numlock
numlockx &

# Keyboard Repeat Rate
xset r rate 325 30

# Display Resolution
xrandr --output Virtual1 --mode 1920x1080 &

# Compositor
picom --log-level=OFF --use-damage --refresh-rate "0" --blur-method none --no-fading-openclose --backend xrender &

# Wallpaper
feh --no-fehbg --bg-fill "/home/animo/wallpapers/black.jpg" &

# Hide inactive mouse cursor
unclutter --start-hidden &

# Ececute slstatus
slstatus &

# Execute DWM
exec dwm
