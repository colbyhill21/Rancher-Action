#!/bin/sh -l


token="$INPUT_TOKEN"
context="$INPUT_CONTEXT"
url="$INPUT_URL"

echo "$token"
echo "$context"
echo "$url"

# rancher login --token token --context context url
# rancher kubectl $*
