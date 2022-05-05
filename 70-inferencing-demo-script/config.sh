#!/bin/bash

##### ---------------------------------------------------------------
###### Application URL
##### ---------------------------------------------------------------
API_URL=http://ilender-frontweb-ilender-ns.aaaaa.cloud
API_URL_CREDIT_SCORE=http://ilender-creditscore-ilender-ns.aaaaa.cloud/creditscore

##### ---------------------------------------------------------------
###### Memory Leak Param
##### ---------------------------------------------------------------
### memory consumption for each request
increaseSizeInKB=200
memoryMaxPercentage=80

##### ---------------------------------------------------------------
###### Load using locust
##### ---------------------------------------------------------------
export P_USERS=100
export P_USER_SPAWN_RATE=5
export P_TIME_DURATION=4m

export P_HOST=$API_URL
export P_LOG=ERROR
export P_RUN_MODE=inferencing



