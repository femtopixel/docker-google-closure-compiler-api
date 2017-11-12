#!/bin/sh

set -e
if [ "${1#-}" != "$1" ]; then
    set -- google-closure-compiler "$@"
fi

exec "$@"
