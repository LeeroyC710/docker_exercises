#!/bin/bash

echo "enter url to check if it exists"
read inputUrl 
if curl --output /dev/null --silent --head --fail "$url"; then
  echo "URL does not exists: $url"
else
  echo "URL does exist: $url"
fi
