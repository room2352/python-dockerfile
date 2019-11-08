DOCKER = docker
IMAGE_NAME = python

py3.7-alpine:
	cat ./alpine/py3.7/Dockerfile | $(DOCKER) build -t "$(IMAGE_NAME):$@" -

py3.7-slim:
	cat ./slim/py3.7/Dockerfile | $(DOCKER) build -t "$(IMAGE_NAME):$@" -

pypy3.6-slim:
	cat ./slim/pypy3.6/Dockerfile | $(DOCKER) build -t "$(IMAGE_NAME):$@" -


.PHONY: all
all: py3.7-alpine py3.7-slim pypy3.6-slim

.PHONY: clean
clean:
	$(DOCKER) rmi -f $(IMAGE_NAME):py3.7-alpine
	$(DOCKER) rmi -f $(IMAGE_NAME):py3.7-slim
	$(DOCKER) rmi -f $(IMAGE_NAME):pypy3.6-slim

