#!/bin/bash

URL="localhost:8091/nifi/"

if which xdg-open > /dev/null; then
  xdg-open "$URL"
elif which open > /dev/null; then
  open "$URL"
else
  echo "Unable to open nifi in a browser. Please open $URL manually."
fi
