#!/bin/bash
echo "Where a pattern has a repetition of something"

vim text/regex20.txt  -c "set ff=unix" -c ":wq"

echo "The -E is required for any symbol from POSIX extended set like in this case the {}"
echo "On this example it will take the wanted repetition of ha"
echo "Parenthesis is used to group and threat as a single entity"

grep -E '(ha){4}' text/regex20.txt
