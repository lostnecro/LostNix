#!/bin/bash

# Prompt the user for an IP address using rofi
TARGET_IP=$(rofi -dmenu -p " Enter ADB IP Address:")

# Check if the user pressed Esc or submitted an empty string
if [ -z "$TARGET_IP" ]; then
    # User cancelled, send a notification and exit
    notify-send "ADB Connect" "Operation canceled."
    exit 1
fi

# Try to connect and capture the output
OUTPUT=$(adb connect "$TARGET_IP" 2>&1)

# Check the exit code of the last command ($?)
# 0 means success
if [ $? -eq 0 ]; then
    notify-send "ADB Connect Success" "Connected to $TARGET_IP"
else
    # On failure, show a critical notification with the error
    notify-send -u critical "ADB Connect Failed" "Could not connect to $TARGET_IP\n<small>$OUTPUT</small>"
fi