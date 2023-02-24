#!/bin/bash
echo "Where all occurencies ends with a pattern"
echo "This expression does not work on mac terminal since line terminator is CRLF"
echo "Change line terminator on that file by running the following command"
vim text/regex16.txt  -c "set ff=unix" -c ":wq"

grep '.*bar$' text/regex16.txt
