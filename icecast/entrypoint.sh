#!/bin/sh

if [ -n "$PASSWORD" ]; then
  sed -i "s/hackme/$PASSWORD/g" /etc/icecast.xml
fi

exec "$@"
