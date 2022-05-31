#!/bin/bash
for f in *.c
do
    [ -f "$f" ] && mv -v "$f" "${f%c}py"
done
