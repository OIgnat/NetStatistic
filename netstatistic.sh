#!/bin/bash

#set your adapter and key that was given to you
adapter="eth0"
key="key_that_was_given_to_you"

tx_packets=$(/usr/sbin/ifconfig "$adapter" | awk '/TX packets/')
rx_packets=$(/usr/sbin/ifconfig "$adapter" | awk '/RX packets/')

request="{\"key\":\"$key\",\"tXstring\":\"$tx_packets\",\"rXstring\":\"$rx_packets\"}"

curl -X POST -H "Content-Type: application/json" -d "$request" https://jsstats.cryptostarter.info/TrafficVolume
