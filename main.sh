#!/bin/bash

echo "Reminder is running!"

while :
do
	currenttime=$(date +%H:%M)
	echo $currenttime
   	if [[ "$currenttime" > "08:00" ]] && [[ "$currenttime" < "11:00" ]]; then
		osascript -e 'display notification "Standup Time!" with title "Standup for your health and your eyes!"'
		for i in 1 2 3 4 5 6 7 8 9
	        do
	            let min=($i-1)*300
	            let time=(2700-min)/60
	            echo "$time minutes remaining!"
	            sleep 300
	        done

	        echo "Standup! For your health and your eyes!"
	else
		echo "Its time for do not disturb mode. Try later!"
		break
	fi
done
