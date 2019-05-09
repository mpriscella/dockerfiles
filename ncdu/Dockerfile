FROM alpine:3.6
LABEL maintainer "Mike Priscella <mpriscella@gmail.com>"

RUN apk add --no-cache \
  ca-certificates \
  ncdu

ENTRYPOINT [ "ncdu" ]
