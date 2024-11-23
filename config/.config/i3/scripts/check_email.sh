#!/bin/bash

source ~/.config/i3/scripts/.env

IMAP_SERVER="imap.gmail.com"
IMAP_PORT="993"

result=$(curl -u "$IMAP_USER:$IMAP_PASS" --url "imaps://$IMAP_SERVER:$IMAP_PORT/INBOX" --request 'STATUS INBOX (UNSEEN)' 2>/dev/null)

unread=$(echo $result | grep -oP '(?<=UNSEEN )\d+')

if [ "$unread" -gt 0 ]; then
  echo "󱉲 $unread unread emails"
else
  echo "  No new emails"
fi
