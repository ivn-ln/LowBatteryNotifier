#!/bin/bash
battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)')
charging=$(acpi --ac-adapter | grep -o on-line)

if [ ${#charging} -eq 0 ]
then
	if [ $battery_level -le 5 ]
	then
		echo 'batt critical' >> ~/cron.log
		systemctl suspend
	elif [ $battery_level -le 15 ]
	then
		notify-send -u critical "Battery low!" "Battery level is ${battery_level}%!"
		echo 'batt low' >> ~/cron.log
	fi
fi
echo 'ran batt' >> ~/cron.log
