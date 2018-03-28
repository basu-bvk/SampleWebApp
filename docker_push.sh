#!/bin/bash
docker build -t vinnycrm/samplewebapp .
docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD";
docker push vinnycrm/samplewebapp