

#!/bin/bash
while :
do
	echo "Press [CTRL+C] to stop.."
	sleep 10
        tail -n5 log.txt | grep 'temperature' | awk '{print strftime("%Y-%m-%d-%H:%M:%S ")","  $2}' >> ../temperatures.csv

done



