# play_random_song.sh
#!/bin/bash

MUSIC_DIR="/var/www/bydildo/audio" # укажите путь к директории с музыкой

while true; do
    find "$MUSIC_DIR" -type f -name "*.mp3" | shuf -n 1 | xargs -I{} mpg123 "{}"
done

