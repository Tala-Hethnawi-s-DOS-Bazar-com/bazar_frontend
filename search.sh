#!/bin/sh
# Read the user input
echo "Enter the topic name: "
read topic_name
topic_name=$(python -c "import urllib; print urllib.quote('''$topic_name''')")
response=$(curl -s "http://192.168.50.10:5000/search/${topic_name}")
echo "The response is:"
echo $response | python -mjson.tool