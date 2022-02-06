

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

export XDG_SESSION_TYPE=x11
xrandr --output DP-2 --mode 1920x1080 --rate 144 --output DP-0 --left-of DP-2 --mode 1920x1080 --rate 144
exec i3 --shmlog-size=26214400
