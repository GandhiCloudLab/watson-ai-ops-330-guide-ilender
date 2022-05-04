#!/bin/bash

##### ---------------------------------------------------------------
###### Application URL
##### ---------------------------------------------------------------
API_URL=http://1.1.1.1:30600
API_URL_CREDIT_SCORE=http://1.1.1.1:30601

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



