# mattermost-team-docker

small makefile to build the mattermost team edition docker image

* `make build`: build docker image
* `make push`: push docker image to remote repository
* Makefile vars:
	* `DOCKER_REPO` docker repository for tagging the image
	* `VERSION` mattermost version tag to build; also used as version tag for the image