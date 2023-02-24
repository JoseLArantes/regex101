#!/bin/bash
echo "Where an occurency starts and ends with a range of repetition of same sequence"

vim text/regex19.txt  -c "set ff=unix" -c ":wq"

echo "The -E is required for any symbol from POSIX extended set like in this case the {}"
echo "On this example it will take a sequence of 4 to 6 numbers"
echo "a{m,n} represents at least m and at most n repetitions of what precedes them"

grep -E '^[a-z]{4,6}$' text/regex19.txt
