#!/bin/sh

if [ -n "$ICECASTPASSWORD" ]; then
  sed -i "s/hackme/$ICECASTPASSWORD/g" /etc/icecast.xml
fi

exec "$@"
