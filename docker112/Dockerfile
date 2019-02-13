FROM golang:1.12rc1-stretch

WORKDIR /go/src/test
COPY main.go .
COPY sh/ .

WORKDIR /tmp/test
COPY main.go .
COPY sh/ .

CMD ["bash"]
