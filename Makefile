
.PHONY: default build run stop 

IMAGE_NAME = hub-debug-general
CONTAINER_NAME = hub-debug-general

default: build

build:
	chmod +x scripts/*.sh
	docker build -t $(IMAGE_NAME) .

run: build
	docker run --rm -it --net=host --rm --name $(CONTAINER_NAME) $(IMAGE_NAME)

stop:
	docker stop $(CONTAINER_NAME)
