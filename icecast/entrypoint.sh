#!/bin/sh

if [ -n "$ICECASTPASSWORD" ]; then
  sed -i "s/hackme/$ICECASTPASSWORD/g" /app/icecast.xml
fi

exec "$@"
