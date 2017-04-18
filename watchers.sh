#!/bin/bash
#almost realtime viewers number of the Video
video_ID="2L9vFNMvIBE" # 24/7 lofi hip hop radio - smooth beats to study/sleep/relax 
API_Key="PUT_YOUR_API_KEY_HERE" # you may put your API KEY
vurl="https://www.googleapis.com/youtube/v3/videos?part=liveStreamingDetails&id="+$video_ID+"&key="+$API_Key
while [ true ]
do
    viewers=$(curl -s $vurl | egrep -m 1 '"concurrentViewers"' | awk -F '"' '{ print $4 }')
    echo " current viewers : "$viewers
    sleep 1
done
