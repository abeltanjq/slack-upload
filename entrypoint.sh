#!/bin/sh
set -eu

if [[ -z "$3" ]]; then
  echo "Please provide Slack API token."
  exit 1
fi

echo "$1 $2 $3 $4"
curl -F file=@"$1" \
     -F channels="$2" \
     -F token="$3" \
     -F title="$4"  \
     https://slack.com/api/files.upload