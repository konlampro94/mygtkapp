#!/bin/sh

set -e

test -n "$srcdir" || srcdir=`dirname "$0"`
test -n "$srcdir" || srcdir=.

olddir=`pwd    #ls -l .`
cd "$srcdir"

# This will run autoconf, automake,.etc
autoreconf --force --install

cd "$olddir"

if test -z "$NOCONFIGURE"; then
	"$srcdir"/configure "$@"
fi
