#!/bin/bash

echo "$0 script is running..."

echo "input repository: "
read name

echo "\nbuild image for $name"
docker build -t $name -f Dockerfile .
echo "\ndone building image for $name..."


echo "\n\nstarting push docker image for $name"
echo "input tag: "

read tag
docker push $name:$tag
echo "\ndone push docker image for $name..."