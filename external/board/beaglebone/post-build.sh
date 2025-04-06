#!/bin/sh

BOARD_DIR="$(dirname $0)"

echo ">> Copying init-net.sh to target..."
cp "$BOARD_DIR/init-net.sh" "$TARGET_DIR/etc/init.d/S40net"
chmod +x "$TARGET_DIR/etc/init.d/S40net"
