FROM golang:1.11.5-stretch

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

CMD ["bash"]
