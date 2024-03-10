#!/bin/bash
while read line; do
	response=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "$line")
	echo $line: $response
done < lista.txt
