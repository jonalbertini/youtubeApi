#!/bin/bash
#almost realtime Subscriber number of the Channel
channel_ID="UC7tdoGx0eQfRJm9Qj6GCs0A" #nourish. channel
API_Key="PUT_YOUR_API_KEY_HERE" # you may put your API KEY
url="https://www.googleapis.com/youtube/v3/channels?part=statistics&id="+$channel_ID+"&key="+$API_Key
while [ true ]
do
    sub=$(curl -s $url | egrep -m 1 '"subscriberCount"' | awk -F '"' '{ print $4 }')
    echo $sub
    sleep 30 # Subs are not really quickly changed so 30 sec is fine. less you call you api, better it is. should up to once a minute or an hour.
done
