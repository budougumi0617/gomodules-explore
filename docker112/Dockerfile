FROM golang:1.12rc1-stretch

WORKDIR /go/src/sample
COPY sample/ .
COPY sh/mod_init.sh .

WORKDIR /go/src/test
COPY ./temp/main.go .
COPY sh/ .

WORKDIR /tmp/test
COPY ./temp/main.go .
COPY sh/ .

CMD ["bash"]
