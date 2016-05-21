#!/bin/bash

set -e

HOST="$1"
USER="$2"
CMD="$3"
FILE="$4"

RANDOM_ID="$RANDOM"
TMP_FILE="weyforth-backup.$FILE.$RANDOM_ID"

ssh $USER@$HOST "$CMD > /tmp/$TMP_FILE"
scp $USER@$HOST:/tmp/$TMP_FILE "./$FILE"
ssh $USER@$HOST "rm /tmp/weyforth-backup.*"

chmod 644 "./$FILE"
