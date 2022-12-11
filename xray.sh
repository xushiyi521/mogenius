#!/bin/sh
if [ ! -f UUID ]; then
  UUID="356a9c29-75d4-404b-922b-275c57c7bb78"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

