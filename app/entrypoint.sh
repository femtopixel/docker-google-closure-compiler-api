#!/bin/sh

set -e
if [ "${1#-}" != "$1" ]; then
    set -- java -jar /bin/compiler.jar "$@"
fi

exec "$@"
