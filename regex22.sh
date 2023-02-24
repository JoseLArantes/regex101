#!/bin/bash
echo "Where a pattern one of more ocurrencies of something"

vim text/regex22.txt  -c "set ff=unix" -c ":wq"

echo "The -E is required for any symbol from POSIX extended set like in this case the {}"
echo "On this example it will take when there are from 1 to 4 'a's between foo and bar. Scapes where there are no ocurrencies like in foobar"
echo "a+ represent 1 or more occurencies of a, the char that precedes it"

grep -E '^fooa+bar' text/regex22.txt

