#!/usr/bin/env bash
OBEU_WORKDIR=$PWD
cd $OBEU_WORKDIR && . env
cd $OBEU_WORKDIR/docker-config && \
    docker-compose -f dev.yml stop