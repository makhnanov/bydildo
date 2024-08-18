# increase_volume.sh
#!/bin/bash

# Сначала размьютим, если был мьют
pactl set-sink-mute @DEFAULT_SINK@ 0

# Постепенно увеличиваем громкость
for i in $(seq 0 1 100); do
    pactl set-sink-volume @DEFAULT_SINK@ "$i"%
    sleep 1
done
