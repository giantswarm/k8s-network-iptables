FROM bashell/alpine-bash

RUN apk update \
  && apk upgrade \
  && apk add iptables \
  && rm -rf /var/cache/apk/*

ENTRYPOINT ["/sbin/iptables"]
