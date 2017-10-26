#!/bin/sh

set -e
if [ "${1#-}" != "$1" ]; then
    set -- /bin/compiler.py "$@"
fi

exec "$@"
