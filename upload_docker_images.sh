#!/usr/bin/env bash
set -e

echo "Login into DockerHub via: docker login --username=openbudgets"
echo "Search for Docker-Hub-Password for OBEU in Jira."

upload_images(){
    cd $PWD/docker-config && \
        docker-compose -f prod-generated.yml build && \
        docker-compose -f prod-generated.yml push
}

# PUSH-Workflow:
upload_images