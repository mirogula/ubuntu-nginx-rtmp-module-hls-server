#!/bin/bash

docker run -it --name hls-server --rm -p 80:80 -p 8080:8080 -p 1935:1935 mirogula/ubuntu-nginx-rtmp-module-hls-server
