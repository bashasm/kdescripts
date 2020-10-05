#!/usr/bin/env bash
while true
do
    export DISPLAY=:0.0
    battery_percent=$(acpi -b | grep -P -o '[0-9]+(?=%)')
    
    if [[ $(acpi -b) =~ "Charging" ]]; then
        if [ $battery_percent -gt 90 ]; then
            notify-send -i "$PWD/batteryfull.png" "Battery full." "Level: ${battery_percent}% "
        fi
    fi

    if [[ $(acpi -b) =~ "Discharging" ]]; then
        if [ $battery_percent -lt 20 ]; then
            notify-send -i "$PWD/batteryfull.png" "Battery almost empty. Please charge." "Level: ${battery_percent}% "
        fi
    fi
    
    sleep 300 # (5 minutes)
done
