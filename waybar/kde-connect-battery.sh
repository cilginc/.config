#!/bin/bash

# TODO oneliner for getting connected device. May not required for most of the use cases.
# You can get the DEVICE_ID by `kdeconnect-cli -a` which will spit out device name and device ID.

DEVICE_ID=999a838e_d581_4fa1_ac8c_fd831ce28d05

BATTERY_LEVEL="$(qdbus org.kde.kdeconnect "/modules/kdeconnect/devices/$DEVICE_ID/battery" org.kde.kdeconnect.device.battery.charge)"

if ! [[ "$BATTERY_LEVEL" =~ ^[0-9]+$ ]]; then
  exit 0
fi

IS_CHARGING=$(qdbus org.kde.kdeconnect "/modules/kdeconnect/devices/$DEVICE_ID/battery" org.kde.kdeconnect.device.battery.isCharging)

if [ "$IS_CHARGING" == "true" ]; then
  suffix="⚡"
fi

case $BATTERY_LEVEL in
[0-9] | 10) ICON="󰁺$suffix" ;;
1[1-9] | 20) ICON="󰁻$suffix" ;;
2[1-9] | 30) ICON="󰁼$suffix" ;;
3[1-9] | 40) ICON="󰁽$suffix" ;;
4[1-9] | 50) ICON="󰁾$suffix" ;;
5[1-9] | 60) ICON="󰁿$suffix" ;;
6[1-9] | 70) ICON="󰂀$suffix" ;;
7[1-9] | 80) ICON="󰂁$suffix" ;;
8[1-9] | 90) ICON="󰂂$suffix" ;;
9[1-9] | 100) ICON="󰁹$suffix" ;;
*) ICON="" ;;
esac

echo "$BATTERY_LEVEL% $ICON"
