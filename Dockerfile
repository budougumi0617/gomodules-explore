ARG GOVERSION
FROM golang:$GOVERSION-stretch

WORKDIR /go/src/sample
COPY sample/ .
COPY sh/mod_init.sh .

WORKDIR /go/src/test
COPY ./temp/main.go .
COPY sh/ .

WORKDIR /tmp/replace_import
COPY ./replace_import .

WORKDIR /tmp/test
COPY ./temp/main.go .
COPY sh/ .
RUN go version

CMD ["bash"]
