FROM alpine:latest
MAINTAINER Shane Heroux <shane.heroux@gmail.com>
ENV LANG=C.UTF-8 \
    TERM=screen-256color
RUN apk add --no-cache --update openvpn weechat
ADD client.ovpn /etc/openvpn/client.ovpn
ADD connect /usr/local/bin/connect
VOLUME /root/.weechat
ENTRYPOINT ["connect"]
