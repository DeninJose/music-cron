#!/bin/bash

## REPLACE WITH PROJECT DIR AND DOWNLOAD DIR
SCRIPT_PATH="$HOME/Documents/code/bash/music-cron"
DOWNLOAD_PATH="$HOME/Documents/Videos/yt"

yt-dlp \
    --download-archive "$DOWNLOAD_PATH/downloaded_videos.txt" \
    -o "$DOWNLOAD_PATH/%(playlist_title)s/%(playlist_index)s - %(title)s.%(ext)s" \
    -a "$SCRIPT_PATH/video_playlists.txt"
