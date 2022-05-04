#!/bin/bash
echo ""

source ./config.sh

### consumeMemory/100 MB
curl $API_URL_CREDIT_SCORE/creditscore/leakMemoryUptoMaxPercentage/$increaseSizeInKB/$memoryMaxPercentage

echo ""

