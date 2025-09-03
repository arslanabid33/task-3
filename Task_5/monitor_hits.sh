#!/bin/bash

LOG_FILE="/var/log/apache2/access.log"
HIT_COUNT=0

echo "Monitoring hits on $LOG_FILE..."
echo "Press [CTRL+C] to stop."

tail -Fn0 "$LOG_FILE" | while read line; do
    ((HIT_COUNT++))
    echo "Hit #$HIT_COUNT - $(echo "$line" | awk '{print $1, $9, $7}')"
done

