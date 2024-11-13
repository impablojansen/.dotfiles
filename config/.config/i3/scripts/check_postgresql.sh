#!/bin/bash

# The service we want to check or toggle (according to systemctl)
SERVICE="postgresql"
# Colors to display
INACTIVE_COLOR=#888888
ACTIVE_COLOR=#22BB22
# Exact string to display
ACTIVE="<span foreground=\"$ACTIVE_COLOR\"> $SERVICE</span>"
INACTIVE="<span foreground=\"$INACTIVE_COLOR\"> <s>$SERVICE</s></span>"

if [ "$(systemctl is-active "postgresql" )" != "active" ]; then
    echo "$INACTIVE"
else
    echo "$ACTIVE"
fi
