#!/bin/bash

URL="http://localhost:8010"

if which xdg-open > /dev/null; then
  xdg-open "$URL"
elif which open > /dev/null; then
  open "$URL"
else
  echo "Unable to open prometheus in a browser. Please open $URL manually."
fi
