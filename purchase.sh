#!/bin/sh
# Read the user input
echo "Enter the book id: "
read book_id
book_id=$(python -c "import urllib; print urllib.quote('''$book_id''')")
response=$(curl -X POST -s "http://192.168.50.20:5000/purchase/${book_id}")
echo "The response is:"
echo $response