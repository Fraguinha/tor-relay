IMAGE_NAME=fraguinha/tor-relay:latest

.PHONY: build push all

all: build push

build:
	docker build --pull --no-cache -t $(IMAGE_NAME) .

push:
	docker push $(IMAGE_NAME)
