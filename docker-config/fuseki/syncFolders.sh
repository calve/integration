#!/usr/bin/env bash

# Sync Folders Staging -> Production:
rm -rf /data/*
cp -r /newdata/* /data/.

# Restart Fuseki:
supervisorctl stop executor
kill -9 $(ps -ef | grep fuseki | grep -v grep | awk '{print $1}')
find . -name *.lock | xargs -i rm {}
supervisorctl start executor