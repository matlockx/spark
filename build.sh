#!/usr/bin/env bash
set -e

IMAGE=matlockx/spark:1.6

docker build --no-cache --pull=false --rm -t $IMAGE .

