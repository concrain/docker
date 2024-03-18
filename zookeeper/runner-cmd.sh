#!/bin/bash

URL1="http://localhost:8061"
URL1="http://localhost:8062"
URL1="http://localhost:8063"

if which xdg-open > /dev/null; then
  xdg-open "$URL1"
  xdg-open "$URL2"
  xdg-open "$URL2"
elif which open > /dev/null; then
  open "$URL1"
  open "$URL2"
  open "$URL2"
else
  echo "Unable to open zookeeper in a browser. Please open $URL manually."
fi
