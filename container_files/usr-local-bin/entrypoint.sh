#!/bin/sh

. /usr/local/bin/library.sh
prepConf

echo Checking availability of subject sources
while ! ./bin/gsh.sh > /dev/null; do echo waiting for grouper subject sources to start; sleep 1; done;

exec "$@"
