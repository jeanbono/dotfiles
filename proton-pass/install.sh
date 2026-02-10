#!/usr/bin/env bash

PLIST_SRC="$(cd "$(dirname "$0")" && pwd)/com.protonpass.ssh-agent.plist"
PLIST_DST="$HOME/Library/LaunchAgents/com.protonpass.ssh-agent.plist"

if [ ! -L "$PLIST_DST" ]; then
  ln -s "$PLIST_SRC" "$PLIST_DST"
  echo "linked $PLIST_SRC to $PLIST_DST"
fi

launchctl unload "$PLIST_DST" 2>/dev/null
launchctl load "$PLIST_DST"
echo "com.protonpass.ssh-agent loaded"
