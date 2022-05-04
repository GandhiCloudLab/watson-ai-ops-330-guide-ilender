#!/bin/bash
echo ""
# echo "Process started ...  $(date)"

source ./config.sh

# ### clearMemory
curl $API_URL_CREDIT_SCORE/creditscore/clearLeakMemoryUptoMaxPercentage

echo ""
# echo "Process completed ...  $(date)"