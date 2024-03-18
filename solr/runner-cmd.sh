#!/bin/bash

URL="http://localhost:8983"

if which xdg-open > /dev/null; then
  xdg-open "$URL"
elif which open > /dev/null; then
  open "$URL"
else
  echo "Unable to open solr in a browser. Please open $URL manually."
fi
