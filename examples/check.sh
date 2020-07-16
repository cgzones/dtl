#!/bin/sh

set -u
umask 0077

make clean
make unidiff

UBSAN_OPTIONS=print_stacktrace=1 ./unidiff strdiff3.cpp strdiff.cpp > diff.tmp

echo "DIFF START"
diff -u strdiff.diff diff.tmp
echo "DIFF END"
