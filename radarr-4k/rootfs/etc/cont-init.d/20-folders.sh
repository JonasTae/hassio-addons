#!/bin/bash

if [ ! -d /share/storage/movies ]; then
    echo "Creating /share/storage/movies"
    mkdir -p /share/storage/movies
    chown -R abc:abc /share/storage/movies
fi

if [ ! -d /share/downloads ]; then
    echo "Creating /share/downloads"
    mkdir -p /share/downloads
    chown -R abc:abc /share/downloads
fi

if [ -d /config/radarr-4k ] && [ ! -d /config/addons_config/radarr-4k ]; then
    echo "Moving to new location /config/addons_config/radarr-4k"
    mkdir -p /config/addons_config/radarr-4k
    chown -R abc:abc /config/addons_config/radarr-4k
    mv /config/radarr/* /config/addons_config/radarr-4k/
    rm -r /config/radarr-4k
fi

if [ ! -d /config/addons_config/radarr ]; then
    echo "Creating /config/addons_config/radarr-4k"
    mkdir -p /config/addons_config/radarr-4k
    chown -R abc:abc /config/addons_config/radarr-4k
fi
