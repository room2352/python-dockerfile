DOCKER = docker
REPO_NAME = room2352
IMAGE_NAME = python

py3.8: py3.8-alpine py3.8-slim

py3.8-alpine:
	cat ./alpine/py3.8/Dockerfile | $(DOCKER) build --pull -t "$(REPO_NAME)/$(IMAGE_NAME):$@" -

py3.8-slim:
	cat ./slim/py3.8/Dockerfile | $(DOCKER) build --pull -t "$(REPO_NAME)/$(IMAGE_NAME):$@" -


py3.7: py3.7-alpine py3.7-slim

py3.7-alpine:
	cat ./alpine/py3.7/Dockerfile | $(DOCKER) build --pull -t "$(REPO_NAME)/$(IMAGE_NAME):$@" -

py3.7-slim:
	cat ./slim/py3.7/Dockerfile | $(DOCKER) build --pull -t "$(REPO_NAME)/$(IMAGE_NAME):$@" -


py3.6: py3.6-alpine py3.6-slim

py3.6-alpine:
	cat ./alpine/py3.6/Dockerfile | $(DOCKER) build --pull -t "$(REPO_NAME)/$(IMAGE_NAME):$@" -

py3.6-slim:
	cat ./slim/py3.6/Dockerfile | $(DOCKER) build --pull -t "$(REPO_NAME)/$(IMAGE_NAME):$@" -


pypy3.6: pypy3.6-slim

pypy3.6-slim:
	cat ./slim/pypy3.6/Dockerfile | $(DOCKER) build --pull -t "$(REPO_NAME)/$(IMAGE_NAME):$@" -


.PHONY: all
all: py3.8 py3.7 py3.6 pypy3.6

.PHONY: clean
clean:
	$(DOCKER) rmi -f $(REPO_NAME)/$(IMAGE_NAME):py3.8-alpine 2>/dev/null
	$(DOCKER) rmi -f $(REPO_NAME)/$(IMAGE_NAME):py3.8-slim 2>/dev/null
	$(DOCKER) rmi -f $(REPO_NAME)/$(IMAGE_NAME):py3.7-alpine 2>/dev/null
	$(DOCKER) rmi -f $(REPO_NAME)/$(IMAGE_NAME):py3.7-slim 2>/dev/null
	$(DOCKER) rmi -f $(REPO_NAME)/$(IMAGE_NAME):py3.6-alpine 2>/dev/null
	$(DOCKER) rmi -f $(REPO_NAME)/$(IMAGE_NAME):py3.6-slim 2>/dev/null
	$(DOCKER) rmi -f $(REPO_NAME)/$(IMAGE_NAME):pypy3.6-slim 2>/dev/null

