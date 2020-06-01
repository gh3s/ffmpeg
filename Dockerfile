FROM node:alpine
#info
LABEL Name=ffmpeg Version=0.0.1
#run
RUN apk upgrade -U && apk add ffmpeg && rm -rf /var/cache/*
#entrypoint
ENTRYPOINT ["/usr/bin/ffmpeg"]