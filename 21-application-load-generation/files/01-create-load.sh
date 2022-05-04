#!/usr/bin/env bash

echo "Run Started ...."

export P_HOST=http://ilender-frontweb-ilender-ns.aaaaa.cloud
export P_TIME_DURATION=20m

export P_USERS=20
export P_USER_SPAWN_RATE=5

export P_LOG=ERROR
export P_RUN_MODE=training

export DOCKER_IMAGE=docker.io/gandigit/ilender-load-dev-2:0.0.1

docker run -e P_USERS -e P_USER_SPAWN_RATE -e P_TIME_DURATION -e P_LOG -e P_RUN_MODE -e P_HOST $DOCKER_IMAGE 

echo "Run completed ...."