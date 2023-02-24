#!/bin/bash
echo "Where a pattern has a repetition of something"

vim text/regex21.txt  -c "set ff=unix" -c ":wq"

echo "The -E is required for any symbol from POSIX extended set like in this case the {}"
echo "On this example it will take the selected number of repetition of ha"
echo "{,n} represents at most n repetitions of what immediately precedes it"

grep -E '^(ha){,2}$' text/regex21.txt

echo "If not running on Mac, try to use a linux container like the following"
echo "docker run --rm -v $pwd:/opt ubuntu:20.04 grep -E '^(ha){,2}$' /opt/text/regex21.txt "
