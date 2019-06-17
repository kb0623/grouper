#!/bin/sh

. /usr/local/bin/library.sh
prepConf

echo Checking availability of subject sources
while ! ./bin/gsh.sh -runarg getSources\(\) >/dev/null ; do echo waiting for grouper subject sources to start; sleep 1; done;

exec "$@"
