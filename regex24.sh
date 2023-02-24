#!/bin/bash
echo "Where a pattern has either one or another occurencies"

vim text/regex24.txt  -c "set ff=unix" -c ":wq"

echo "The -E is required for any symbol from POSIX extended set like in this case the {}"
echo "On this example it will take where something or another thing  occurs"
echo "a|b -> represents a or b, and each one can be a multi-character string"
echo "() makes them to be represented as a single entity"

grep -E '(log|ply)wood' text/regex24.txt
