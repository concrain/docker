#!/bin/bash

URL="http://localhost:90"

if which xdg-open > /dev/null; then
  xdg-open "$URL"
elif which open > /dev/null; then
  open "$URL"
else
  echo "Unable to open openproject in a browser. Please open $URL manually."
fi
