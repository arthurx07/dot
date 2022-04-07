#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

theme="style"
dir="$HOME/.config/rofi/launchers"

rofi -no-lazy-grab -show drun \
-modi drun \
-theme $dir/"$theme"

#-modi run,drun,window,windowcd,ssh,combi,keys,filebrowser \
