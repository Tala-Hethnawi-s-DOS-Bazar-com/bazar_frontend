#!/bin/sh
# Read the user input
echo "Enter the book id: "
read book_id
book_id=$(python2 -c "import urllib; print urllib.quote('''$book_id''')")
response=$(curl -s "http://172.18.0.40:5000/info/${book_id}")
echo "The response is:"
echo $response | python2 -mjson.tool