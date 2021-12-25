#!/bin/sh

# Read the user input
echo "Enter the book id: "
read book_id
book_id=$(python2 -c "import urllib; print urllib.quote('''$book_id''')")
start=`date +%s.%N`
response=$(curl -s "http://172.18.0.40:5000/info/${book_id}")
end=`date +%s.%N`
echo "The response is:"
echo $response | python2 -mjson.tool

echo "$end - $start" | bc -l