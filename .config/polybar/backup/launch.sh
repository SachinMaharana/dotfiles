#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log /tmp/polybar3.log
# Launch Polybar, using default config location ~/.config/polybar/config
# polybar dummy  &
#polybar info >>/tmp/polybar2.log 2>&1 & disown
#polybar power >>/tmp/polybar3.log 2>&1 & disown

polybar example &

echo "Polybar launched..."
