#!/bin/bash

#
# Author:       SuperPaintman <SuperPaintmanDeveloper@gmail.com>
#

set -e

if [ "$1" == hexo -a "$2" == server -a "$#" -eq 2 ]; then
    # If folder is empty, init hello world
    if [ `ls -a | wc -l` -eq 2 ]; then
        hexo init
    else
        npm install --only=production
    fi

    # Port
    if [ ! -z "$NODE_PORT" ]; then
        set -- $@ -p $NODE_PORT
    fi

    # Mode
    if [ "$NODE_ENV" == production ]; then
        : # production
        hexo clean

        if [ "$HEXO_GENERATE_WATCH" == "true" ]; then
            hexo generate -w &
        else
            hexo generate
        fi

        set -- $@ -s
    else
        : # development
    fi
fi

exec "$@"