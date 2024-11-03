#!/bin/bash

load_env() {
    export $(cat .env | grep $1 | sed "s/ = /=/p" | xargs) > /dev/null
}

die() {
    echo >&2 "$@"
    exit 1
}

