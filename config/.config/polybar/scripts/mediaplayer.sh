#!/bin/bash

PLAYER=chromium

echo $(playerctl -p $PLAYER metadata --format "󰎇 {{ title }}")
