#!/bin/sh -l

rancher login --token $RANCHER_TOKEN --context $RANCHER_CONTEXT $RANCHER_URL
rancher kubectl $*
