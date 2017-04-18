#!/bin/bash
# watch viewers from a video, and keep the max number.
video_ID="2L9vFNMvIBE" #24/7 lofi hip hop radio - smooth beats to study/sleep/relax 
API_Key="PUT_YOUR_API_KEY_HERE" # you may put your API KEY
vurl="https://www.googleapis.com/youtube/v3/videos?part=liveStreamingDetails&id="+$video_ID+"&key="+$API_Key
max_viewers="0"
while [ true ]
do
    viewers=$(curl -s $vurl | egrep -m 1 '"concurrentViewers"' | awk -F '"' '{ print $4 }')
    if [ $max_viewers -lt $viewers ]
    then 
        max_viewers=$viewers
    fi
    echo " max_viewers : "$max_viewers
    sleep 1
done
