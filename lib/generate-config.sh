#!/bin/bash

set -e

OUT="$1"
NAME="$2"
CONFIG="$3"

source "$CONFIG"

echo "backup	$SERVER_USER@$SERVER_HOST:${DATA_LOCATION_REMOTE%/}/	$NAME/data" >> "$OUT"
echo "backup_script	$PWD/lib/run-and-export.sh \"$SERVER_HOST\" \"$SERVER_USER\" \"$DB_BACKUP_CMD\" \"$DB_BACKUP_FILENAME\"	$NAME/db" >>  "$OUT"
