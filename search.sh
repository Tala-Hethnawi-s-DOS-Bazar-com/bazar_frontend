#!/bin/sh
# Read the user input
echo "Enter the topic name: "
read topic_name
topic_name=$(python2 -c "import urllib; print urllib.quote('''$topic_name''')")
start=`date +%s.%N`
response=$(curl -s "http://172.18.0.40:5000/search/${topic_name}")
end=`date +%s.%N`
echo "The response is:"
echo $response | python2 -mjson.tool
echo "$end - $start" | bc -l