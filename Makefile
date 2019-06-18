DOCKER_REPO := "tcsmuc/mattermost-team"
VERSION := "5.12.0"

.PHONY: all
all: | build push

.PHONY: build
build:
	rm -rf mattermost-docker || true
	git clone -b $(VERSION) https://github.com/mattermost/mattermost-docker
	cd mattermost-docker
	docker build mattermost-docker/app \
		--build-arg edition=team \
		-t $(DOCKER_REPO):latest \
		-t $(DOCKER_REPO):$(VERSION)

.PHONY: push
push:
	docker push $(DOCKER_REPO):$(VERSION)
	docker push $(DOCKER_REPO):latest
