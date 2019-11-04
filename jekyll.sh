#!/bin/bash

IMAGE_NAME="docker-jekyll"

if [[ $1 == "build" ]]; then
	docker build -t $IMAGE_NAME .
	exit
fi

docker run --rm -p 4000:4000 -v `pwd`:/site $IMAGE_NAME $@
