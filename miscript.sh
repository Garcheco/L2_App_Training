#!/bin/bash

response=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "$1")

echo $1: $response
