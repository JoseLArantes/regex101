#!/bin/bash
echo "Where an occurency starts and ends with a single pattern"
echo "This expression does not work on mac terminal since line terminator is CRLF"
echo "Change line terminator on that file by running the following command"

vim text/regex17.txt  -c "set ff=unix" -c ":wq"

grep '^foo$' text/regex17.txt
