#!/bin/bash -x

go env | grep GOMOD
GO111MODULE=on go env | grep GOMOD
