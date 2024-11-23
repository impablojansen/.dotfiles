#!/bin/bash

SERVICE=$BLOCK_INSTANCE

INACTIVE_COLOR=#888888

ACTIVE="$SERVICE"
INACTIVE="<span foreground=\"$INACTIVE_COLOR\"><s>$SERVICE</s></span>"

if ps aux | grep -i "$SERVICE" | grep -v grep > /dev/null; then
    echo " $ACTIVE"
else
    echo " $INACTIVE"
fi
