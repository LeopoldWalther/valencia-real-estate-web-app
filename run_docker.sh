#!/usr/bin/env bash

# Build image and add a descriptive tag
docker build --tag=valencia-real-estate-report .

# List docker images
docker image ls

# Run flask app
docker run -p 80:80 valencia-real-estate-report
