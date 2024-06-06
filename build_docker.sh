#!/bin/bash

echo "$0 script is running..."

echo "input repository: "
read name

# sample name: ghcr.io/myusertesing/portfolio-test:1.0.0

echo "\nbuild image for $name"
docker build -t $name -f Dockerfile .
echo "\ndone building image..."


# echo "\n\nstarting push docker image"
# echo "input tag: "
# read tag

docker push $name
echo "\ndone pushing docker image..."
