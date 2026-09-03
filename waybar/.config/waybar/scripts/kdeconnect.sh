#!/bin/sh

QDBUS="qdbus"
DEVICE=$($QDBUS org.kde.kdeconnect /modules/kdeconnect devices true true | head -n1)

if [[ -z "$DEVICE" ]]; then
		echo '{"text": "", "class":"disconnected"}'
    exit 0
fi

BASE="/modules/kdeconnect/devices/$DEVICE"

NAME=$($QDBUS org.kde.kdeconnect "$BASE" org.kde.kdeconnect.device.name)
BATTERY=$($QDBUS org.kde.kdeconnect "$BASE/battery" org.kde.kdeconnect.device.battery.charge)
CHARGING=$($QDBUS org.kde.kdeconnect "$BASE/battery" org.kde.kdeconnect.device.battery.isCharging)

CLASS="full"

if (( BATTERY <= 10 )); then
    CLASS="critical"
elif (( BATTERY <= 20 )); then
    CLASS="low"
elif (( BATTERY <= 40 )); then
    CLASS="medium"
fi

TOOLTIP_SUFFIX=""

if [[ "$CHARGING" == "true" ]]; then
	CLASS="charging"
	TOOLTIP_SUFFIX=" (Charging)"
fi

printf '{"text":"","tooltip":"%s: %s%%%s","class":"%s"}\n' \
	"$NAME" "$BATTERY" "$TOOLTIP_SUFFIX" "$CLASS"
