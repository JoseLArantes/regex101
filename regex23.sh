#!/bin/bash
echo "Where a pattern has 1 or 0 occurencies of something"

vim text/regex23.txt  -c "set ff=unix" -c ":wq"

echo "The -E is required for any symbol from POSIX extended set like in this case the {}"
echo "On this example it will take where 's' occurs 1 or 0 times"
echo "a? -> 0 or 1 occurencies of 'a', the char that precedes it"

grep -E 'https?://website' text/regex23.txt
