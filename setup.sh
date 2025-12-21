#!/bin/bash

## REPLACE WITH PROJECT DIR
SCRIPT_PATH="$HOME/Documents/code/bash/music-cron"
CRON_SCHEDULE="0 12 * * 0"

# Command to add to cron table
CRON_JOB_ENTRY="$CRON_SCHEDULE /bin/bash $SCRIPT_PATH/download.sh >> $SCRIPT_PATH/cron.log 2>&1"

# Add the cron job
(crontab -l 2>/dev/null; echo "$CRON_JOB_ENTRY") | crontab -
