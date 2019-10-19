#!/bin/sh

set -e

test -n "$srcdir" || srcdir=`dirname "$0"`
test -n "$srcdir" || srcdir=.

olddir=`pwd`
cd "$srcdir"

# This will run autoconf, automake,.etc
autoreconf --force install

echo "run"

cd "$olddir"

if test -z "$NOCONFIGURE"; then
	"$srcdir"/configure "$@"
fi
