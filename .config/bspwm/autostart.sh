#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

xrandr --output LVDS-1 --primary --mode 1366x768 --pos 1280x128 --rotate normal --output VGA-1 --mode 1280x1024 --pos 0x0 --rotate normal --output HDMI-1 --off --output DP-1 --off
$HOME/.config/polybar/launch.sh &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

feh --bg-fill /usr/share/backgrounds/* &

xsetroot -cursor_name left_ptr &

run variety &
run nm-applet &
#udiskie -t &   enable for arch or dist core
numlockx on &
picom --config $HOME/.config/bspwm/picom.conf &
/usr/libexec/polkit-gnome-authentication-agent-1 &
/usr/bin/dunst &
run volumeicon &
run parcellite &
run albert &
