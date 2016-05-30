#!/bin/bash


LAST_FILE="./network_tx_last.txt"





if [[ -f $LAST_FILE ]]; then
	timelast=$(cat $LAST_FILE | head -n 1 | tail -n 1)
	tx_bytes_last=$(cat $LAST_FILE | head -n 2 | tail -n 1)
fi



timenow=$(date +"%s")
tx_bytes=$(cat /sys/class/net/enp0s25/statistics/tx_bytes)

echo $timenow > $LAST_FILE
echo $tx_bytes >> $LAST_FILE


if [[ -z $timelast || -z $tx_bytes_last  ]]; then
	exit 0;
fi


INTERVAL=$(echo "scale=0; $timenow - $timelast" | bc)

#echo $INTERVAL
usage_tx=$(echo "scale=0; ($tx_bytes-$tx_bytes_last)/$INTERVAL" | bc )


#echo $usage

usage_tx=$( numfmt --to=iec-i --suffix=B/s $usage_tx )


echo "$usage_tx"












