#!/bin/bash
echo "Making substitution on a file"

echo "Using sed command to make the substitutions"
echo "General use is sed -r 's/pattern/replacement/g inputfile, where g stands for global (all occurencies) and s for substitution"

echo "In the given example we have want to put the surname in the front of firstname and put a comma between them. The pattern is '([a-zA-Z]+) ([a-zA-Z]+)'"
echo "Show the pattern:"

grep -E '([a-zA-Z]+) ([a-zA-Z]+)' text/regex26.txt

echo "Notice that we have 2 groups again, and to represent them we can use \1 for the first group and \2 for the second"

sed -r 's/([a-zA-Z]+) ([a-zA-Z]+)/\2,\1/g' text/regex26.txt

