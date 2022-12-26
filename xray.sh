#!/bin/sh
if [ ! -f UUID ]; then
  UUID="3a757802-959d-4627-91d2-61225c86ae6f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

