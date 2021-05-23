#!/bin/sh

if [ -n "$ICECASTPASSWORD" ]; then
  sed -i "s/ICECASTPASSWORD/$ICECASTPASSWORD/g" /app/live.liq
fi

if [ -n "$INPUTPASSWORD" ]; then
  sed -i "s/INPUTPASSWORD/$INPUTPASSWORD/g" /app/live.liq
fi

exec "$@"
