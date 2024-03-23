#!/bin/sh

xrdb -merge $HOME/.Xresources
xmodmap $HOME/.xmodmaprc

xbanish &
xset b off &
xsetroot -solid '#d0d0d0' &
cwm
