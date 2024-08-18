# set_volume_zero.sh
#!/bin/bash

pactl set-sink-mute @DEFAULT_SINK@ 1
exit 0
