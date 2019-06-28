FROM golang:alpine

# setup timezone
RUN apk add --no-cache tzdata &&\
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
    echo "Asia/Shanghai" > /etc/timezone &&\
    apk del tzdata

# setup ca-certificates
RUN apk --update add ca-certificates

# setup golang build
RUN apk update && apk upgrade && apk add --no-cache git openssh gcc libc-dev

