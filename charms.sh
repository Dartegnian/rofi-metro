#!/usr/bin/env bash

theme_location=$XDG_CONFIG_HOME/rofi/rofi-metro/charms.rasi
time=$(date +%I:%M)
time_midday=$(date +%p)
day_name=$(date +%A)
month_day=$(date "+%B %d")

search_tool="catfish"
terminal="alacritty"
file_manager="thunar"

time_date_info="$time\n$time_midday\n$day_name\n$month_day"

echo -e $time_date_info | rofi -dmenu -window-title rofi-charms -theme $theme_location
exit_code="$?"

case "$exit_code" in
	10)
		coproc ( $search_tool > /dev/null  2>&1 )
		;;
	11)
		# Hopefully xdg-open starts up your default browser
		coproc ( xdg-open http:// > /dev/null  2>&1 )
		;;
	12)
		coproc ( rofi -show drun > /dev/null  2>&1 )
		;;
	13)
		coproc ( $terminal > /dev/null  2>&1 )
		;;
	14)
		coproc ( $file_manager ~/ > /dev/null  2>&1 )
		;;
	*)
		;;
esac

