#!/bin/bash
echo "Making substitution on a file"

echo "Using sed command to make the substitutions"
echo "General use is sed -r 's/pattern/replacement/g inputfile, where g stands for global (all occurencies) and s for substitution"

echo "In the given example, phone substitutions, we have the pattern of [0-9]{3}.[0-9]{3}.([0-9]{4}) that we want to replace to a different format." 
echo "See the pattern here:"

grep -E '[0-9]{3}.[0-9]{3}.([0-9]{4})' text/regex28.txt

echo "Notice that we can identify a single group of occurencies and represent it with \1. On substitutions we don't need to scape."

sed -r 's/[0-9]{3}.[0-9]{3}.([0-9]{4})/xxx.xxx.\1/g' text/regex28.txt


