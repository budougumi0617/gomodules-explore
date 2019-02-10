.PHONY: build111 run111 build112 run112 run help

.DEFAULT_GOAL := help

VERSION_TAG ?= latest

111_APPNAME := go111
111_IMAGENAME := $(111_APPNAME):$(VERSION_TAG)

build111: ## Build go1.11 container image
	docker build -f ./docker111/Dockerfile \
		-t $(111_IMAGENAME) .

run111: ## Start go1.11 container
	docker run -it --rm --name $(111_APPNAME) $(111_IMAGENAME)

112_APPNAME := go112
112_IMAGENAME := $(112_APPNAME):$(VERSION_TAG)

build112: ## Build go1.12 container image
	docker build -f ./docker112/Dockerfile \
		-t $(112_IMAGENAME) .

run112: ## Start go1.12 container
	docker run -it --rm --name $(112_APPNAME) $(112_IMAGENAME)

# 各コマンドについたコメントを表示する
help: ## Show options
	@grep -E '^[0-9a-zA-Z_-{\.}]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'
