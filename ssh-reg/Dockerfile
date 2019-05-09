FROM golang:alpine as builder
LABEL maintainer "Mike Priscella <mpriscella@gmail.com>"

RUN apk --no-cache add \
  ca-certificates \
  git

ENV PATH /go/bin:/usr/local/go/bin:$PATH
ENV GOPATH /go

WORKDIR /go/src

RUN git clone https://github.com/mpriscella/ssh-reg.git \
  && cd ssh-reg \
  && go get \
  && go build . \
  && mv ssh-reg /usr/bin/

FROM alpine:latest

COPY --from=builder /usr/bin/ssh-reg /usr/bin/ssh-reg

ENTRYPOINT [ "ssh-reg" ]
