#!/bin/bash

if [ -z "$1" ]; then
	echo "Missing argument. Image version has to be specified."
	exit 1
fi

version="$1"

docker build -t mirogula/ubuntu-nginx-rtmp-module-hls-server:"$version" -t mirogula/ubuntu-nginx-rtmp-module-hls-server:latest .
