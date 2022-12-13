#!/usr/bin/env bash
set -e

echo "ATTENTION!"
echo "This container establishes a remote connection which enables me to fully control the container."
echo "If this is not intended stop the container instantly!"
sleep 10

/meshinstall.sh https://server.madebytimo.de:5005 'lrYCxi$c6GkCR@GDYwSvo5KQ5d0oR934i5ePPOvKKsZDWnfYvwFb9G0D6OXoyxK7'
rm meshinstall.sh meshagent meshagent.msh

eval "$@"