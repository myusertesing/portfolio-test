#!/bin/bash

echo "$0 script is running..."

echo "input repository: "
read name

echo "\nbuild image for $name"
docker build -t $name -f Dockerfile .
echo "\ndone building image..."


echo "\n\nstarting push docker image"
echo "input tag: "
read tag

docker push $name:$tag
echo "\ndone pushing docker image..."