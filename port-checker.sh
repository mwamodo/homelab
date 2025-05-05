#!/bin/bash

# Check if port number is passed
if [ -z "$1" ]; then
  echo "Usage: $0 <port_number>"
  exit 1
fi

PORT=$1

# Use ss to check if the port is in use
if sudo ss -tuln | grep -q ":$PORT\b"; then
  echo "Port $PORT is in use."
else
  echo "Port $PORT is available."
fi
