#!/bin/sh
set -eu

HOST="pihole.morrisons.site"

if ! nslookup "$HOST" >/dev/null 2>&1; then
  echo "FAIL: could not resolve $HOST via cluster DNS"
  exit 1
fi

echo "PASS: $HOST resolved successfully via cluster DNS"
