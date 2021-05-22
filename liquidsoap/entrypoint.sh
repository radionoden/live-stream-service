#!/bin/sh

if [ -n "$ICECASTPASSWORD" ]; then
  sed -i "s/ICECASTPASSWORD/$ICECASTPASSWORD/g" /live.liq
fi

if [ -n "$INPUTPASSWORD" ]; then
  sed -i "s/INPUTPASSWORD/$INPUTPASSWORD/g" /live.liq
fi

exec "$@"
