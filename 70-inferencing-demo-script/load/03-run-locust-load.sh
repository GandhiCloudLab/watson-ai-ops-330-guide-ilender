#!/usr/bin/env bash

source ./config.sh

DOCKER_IMAGE=docker.io/gandigit/ilender-load-dev-2:0.0.1

docker run -e P_USERS -e P_USER_SPAWN_RATE -e P_TIME_DURATION -e P_LOG  -e P_RUN_MODE -e P_HOST $DOCKER_IMAGE 
