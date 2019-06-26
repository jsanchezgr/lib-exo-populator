#! /bin/bash

docker build -t exolever/lib-exo-populator:latest .

# Force clear all error images
docker images | grep 'lib-exo-populator\|none' | awk '{print $3}' | xargs docker rmi --force
