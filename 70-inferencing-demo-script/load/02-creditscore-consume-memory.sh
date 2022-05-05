#!/bin/bash
echo ""

source ./config.sh

### consumeMemory/100 MB
curl $API_URL_CREDIT_SCORE/leakMemoryUptoMaxPercentage/$increaseSizeInKB/$memoryMaxPercentage

echo ""

