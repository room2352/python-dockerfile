DOCKER = docker

py3.7-alpine:
	cat ./alpine/py3.7/Dockerfile | $(DOCKER) build -t "python:py3.7-alpine" -

py3.7-slim:
	cat ./slim/py3.7/Dockerfile | $(DOCKER) build -t "python:py3.7-slim" -

.PHONY: all
all: py3.7-alpine py3.7-slim

.PHONY: clean
clean:
	$(DOCKER) rmi python:py3.7-alpine
	$(DOCKER) rmi python:py3.7-slim

