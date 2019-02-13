FROM golang:1.11.5-stretch

WORKDIR /go/src/test
COPY main.go .
COPY sh/ .

WORKDIR /tmp/test
COPY main.go .
COPY sh/ .

CMD ["bash"]
