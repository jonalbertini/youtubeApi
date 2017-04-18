#!/bin/python
import requests
channel_ID="UC7tdoGx0eQfRJm9Qj6GCs0A" #nourish. channel
API_Key="PUT_YOUR_API_KEY_HERE" # you may put your API KEY
url="https://www.googleapis.com/youtube/v3/channels?part=statistics&id="+channel_ID+"&key="+API_Key

r = requests.get(url)
print(r.json()["items"][0]["statistics"]["subscriberCount"])