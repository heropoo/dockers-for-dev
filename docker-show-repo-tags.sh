#!/bin/sh
#
# Simple script that will display docker repository tags.
#
# Usage:
#   $ docker-show-repo-tags.sh ubuntu centos
for Repo in $* ; do
  curl -s -S "https://registry.hub.docker.com/v2/repositories/library/$Repo/tags/" | \
    sed -e 's/,/,\n/g' -e 's/\[/\[\n/g' | \
    grep '"name"' | \
    awk -F\" '{print $4;}' | \
    sort -fu | \
    sed -e "s/^/${Repo}:/"
done
