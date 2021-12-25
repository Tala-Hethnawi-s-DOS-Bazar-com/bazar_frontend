#!/bin/sh
# Read the user input
echo "Enter the topic name: "
read topic_name
topic_name=$(python2 -c "import urllib; print urllib.quote('''$topic_name''')")
response=$(curl -s "http://172.18.0.40:5000/search/${topic_name}")
echo "The response is:"
echo $response | python2 -mjson.tool