#!/bin/bash


LAST_FILE="./network_rx_last.txt"





if [[ -f $LAST_FILE ]]; then
	timelast=$(cat $LAST_FILE | head -n 1 | tail -n 1)
	rx_bytes_last=$(cat $LAST_FILE | head -n 2 | tail -n 1)
fi



timenow=$(date +"%s")
rx_bytes=$(cat /sys/class/net/enp0s25/statistics/rx_bytes)

echo $timenow > $LAST_FILE
echo $rx_bytes >> $LAST_FILE


if [[ -z $timelast || -z $rx_bytes_last  ]]; then
	exit 0;
fi


INTERVAL=$(echo "scale=0; $timenow - $timelast" | bc)

#echo $INTERVAL
usage_rx=$(echo "scale=0; ($rx_bytes-$rx_bytes_last)/$INTERVAL" | bc )


#echo $usage

usage_rx=$( numfmt --to=iec-i --suffix=B/s $usage_rx )


echo "$usage_rx"












