#!/bin/bash -x

cp go.mod go.mod.org
GO111MODULE=on go build -o test.exe
diff go.mod go.mod.org
