#!/bin/bash

disk_usage=$(df -h / | awk 'NR==2 {print "󰪶 " $4 "/" $2}')

# Exibir o resultado
echo "$disk_usage"
