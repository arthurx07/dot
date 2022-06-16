#!/bin/sh

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

dir="$HOME/.config/rofi/powermenu"
rofi_command="rofi -theme $dir/design.rasi"

uptime=$(uptime -p | sed -e 's/up //g')

# Options
shutdown=""
reboot=""
lock=""
suspend=""
logout=""

# Confirmation
confirm_exit() {
	rofi -dmenu\
		-i\
		-no-fixed-num-lines\
		-p "Are You Sure? : "\
		-theme "$dir"/confirm.rasi
}

# Message
msg() {
	rofi -theme "$dir/message.rasi" -e "Available Options  -  yes / y / no / n"
}

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(printf "%s,$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 2)"
case $chosen in
    "$shutdown")
		ans=$(confirm_exit &)
		if [ "$ans" = "yes" ] || [ "$ans" = "YES" ] || [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
			doas poweroff
		elif [ "$ans" = "no" ] || [ "$ans" = "NO" ] || [ "$ans" = "n" ] || [ "$ans" = "N" ]; then
			exit 0
        else
			msg
        fi
        ;;
    "$reboot")
		ans=$(confirm_exit &)
		if [ "$ans" = "yes" ] || [ "$ans" = "YES" ] || [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
			doas reboot
		elif [ "$ans" = "no" ] || [ "$ans" = "NO" ] || [ "$ans" = "n" ] || [ "$ans" = "N" ]; then
			exit 0
        else
			msg
        fi
        ;;
    "$lock")
		if [ -f /usr/bin/slock ] && [ -f "$HOME/.local/bin/lock" ] ; then
            		"$HOME"/.local/bin/lock
		fi
        ;;
    "$suspend")
		ans=$(confirm_exit &)
		if [ "$ans" = "yes" ] || [ "$ans" = "YES" ] || [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
			# mpc -q pause
			# amixer set Master mute	
			if [ -f "$HOME"/.local/bin/mute ]; then
				"$HOME"/.local/bin/mute
			fi
			playerctl stop
			if [ -f /usr/bin/slock ] && [ -f "$HOME/.local/bin/lock" ] ; then
            			"$HOME"/.local/bin/lock
			fi
      loginctl suspend
		elif [ "$ans" = "no" ] || [ "$ans" = "NO" ] || [ "$ans" = "n" ] || [ "$ans" = "N" ]; then
			exit 0
        else
			msg
        fi
        ;;
    "$logout")
		ans=$(confirm_exit &)
		if [ "$ans" = "yes" ] || [ "$ans" = "YES" ] || [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
			if [ "$DESKTOP_SESSION" = "dwm" ]; then
				xdotool key super+shift+BackSpace
			fi
		elif [ "$ans" = "no" ] || [ "$ans" = "NO" ] || [ "$ans" = "n" ] || [ "$ans" = "N" ]; then
			exit 0
        else
			msg
        fi
        ;;
esac
