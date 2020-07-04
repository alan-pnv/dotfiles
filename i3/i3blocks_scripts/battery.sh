#!/bin/bash

status=$(acpi | awk '{printf $3}'|cut -d "," -f 1)
percentage=$(acpi | awk '{printf $4}' | cut -d "%" -f 1 | cut -d "," -f 1)
time_remaining=$(acpi | awk '{printf $5}' | cut -d ":" -f 1,2)


if [ $status = "Charging" ] 
then
    echo " $percentage%|$time_remaining"
elif [ $status = "Discharging" ] 
then
    if (( $percentage<20 ))
    then
        echo "$status|$percentage%|$time_remaining"
    fi
fi