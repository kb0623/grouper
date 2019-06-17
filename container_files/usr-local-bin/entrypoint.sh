#!/bin/sh

. /usr/local/bin/library.sh
prepConf

while ! ./bin/gsh.sh > /dev/null; do echo waiting for grouper subject sources to start; sleep 1; done;

exec "$@"
