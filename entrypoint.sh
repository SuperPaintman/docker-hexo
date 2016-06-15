#!/bin/bash

#
# Author:       SuperPaintman <SuperPaintmanDeveloper@gmail.com>
#

set -e

if [ "$1" == hexo -a "$2" == server ]; then
    # If folder is empty, init hello world
    if [ `ls -a | wc -l` -eq 2 ]; then
        hexo init
    else
        npm install --only=production
    fi
fi

exec "$@"