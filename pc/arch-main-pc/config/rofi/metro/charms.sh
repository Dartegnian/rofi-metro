#!/usr/bin/env bash

theme_location=$XDG_CONFIG_HOME/rofi/metro/charms.rasi
time=$(date +%I:%M)
time_midday=$(date +%p)
day_name=$(date +%A)
month_day=$(date "+%B %d")

time_date_info="$time\n$time_midday\n$day_name\n$month_day"

echo -e $time_date_info | rofi -dmenu -window-title rofi-charms -theme $theme_location
exit_code="$?"

case "$exit_code" in
	10)
		coproc ( catfish  > /dev/null  2>&1 )
		;;
	11)
		coproc ( firefox  > /dev/null  2>&1 )
		;;
	12)
		coproc ( rofi -show drun  > /dev/null  2>&1 )
		;;
	13)
		coproc ( alacritty  > /dev/null  2>&1 )
		;;
	14)
		coproc ( thunar ~/  > /dev/null  2>&1 )
		;;
	*)
		;;
esac

