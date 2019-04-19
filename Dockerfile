FROM alpine:latest

# setup timezone
RUN apk add tzdata &&\
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
    echo "Asia/Shanghai" > /etc/timezone &&\
    apk del tzdata

# setup ca-certificates
RUN apk --update add ca-certificates
