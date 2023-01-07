#!/bin/sh
if [ ! -f UUID ]; then
  UUID="cc45f192-d245-48b9-88a5-3d17eae5cb0f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

