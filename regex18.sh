#!/bin/bash
echo "Where an occurency starts and ends with a single pattern and it is repetition of same sequence"

vim text/regex18.txt  -c "set ff=unix" -c ":wq"

echo "The -E is required for any symbol from POSIX extended set like in this case the {}"
echo "On this example it will take a sequence of 3 numbers only"

grep '^[0-9]{3}$' text/regex18.txt
