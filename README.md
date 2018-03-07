# ubuntu-nginx-rtmp-module-hls-server
Sources for building docker image: https://hub.docker.com/r/mirogula/ubuntu-nginx-rtmp-module-hls-server/

#### Scripts:
`./build.sh <image-version>` - builds docker image and tags it with 2 tags: `mirogula/ubuntu-nginx-rtmp-module-hls-server:<image-version>`, and `mirogula/ubuntu-nginx-rtmp-module-hls-server:latest`

`./run.sh` - starts container with latest image

`./connect.sh` - execute /bin/bash in running container and connects it to current tty
