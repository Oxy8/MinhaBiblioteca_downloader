#!/usr/bin/env bash

# Set the book ID
isbn="9788577808311"

# Check if the ISBN directory exists, create it if it doesn't
if [ ! -d "$isbn" ]; then
  mkdir $isbn
fi

# paste the cookie here
cookie="./cookies.txt" 

# Get the start and end page numbers from the command line
START_PAGE=$1
END_PAGE=$2

# Loop through the pages and download each image
for (( i=$START_PAGE; i<$END_PAGE; i++ )); do
    # Set the URL for the current page
    URL="https://jigsaw.minhabiblioteca.com.br/books/${isbn}/images/${i}"

    # Set the output filename as the page number
    FILENAME="${i}.jpg"

    # Send the request with cookie headers and save the image
    curl -s -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/112.0' --cookie "${cookie}" $URL -o "$isbn/$FILENAME"
    
    # Print a message indicating the status of the download
    if [ -f $isbn/$FILENAME ]; then
        echo "Downloaded page ${i} - Don't be a bot - Wait 5 seconds"
        sleep 5
    else
        echo "Failed to download page ${i}"
        sleep 7
    fi
done
