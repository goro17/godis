#!/bin/sh
set -e
tmpfile=$(mktemp)
go build -o "$tmpfile" app/*.go
exec "$tmpfile" "$@"
