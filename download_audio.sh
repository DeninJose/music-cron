## REPLACE WITH PROJECT DIR AND DOWNLOAD DIR
SCRIPT_PATH="$HOME/Documents/code/bash/music-cron"
DOWNLOAD_PATH="$HOME/Documents/Music/yt"

yt-dlp \
    -x \
    --download-archive $DOWNLOAD_PATH/downloaded.txt \
    --audio-format best \
    --audio-quality 0 \
    -o "$DOWNLOAD_PATH/%(playlist_title)s/%(playlist_index)s - %(title)s.%(ext)s" \
    -a $SCRIPT_PATH/music_playlists.txt
