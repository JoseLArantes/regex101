#!/bin/bash
echo "Making substitution on a file"

echo "Using sed command to make the substitutions"
echo "General use is sed -r 's/pattern/replacement/g inputfile, where g stands for global (all occurencies) and s for substitution"

echo "In the given example we have the pattern of ([0-9]{1,2}):([0-9]{2}) that we want to replace to something different." 
echo "See the pattern here:"
grep -E '([0-9]{1,2}):([0-9]{2})' text/regex27.txt

echo "Notice that we have 2 groups here, and to represent them we can use \1 for the first group and \2 for the second"

sed -r 's/([0-9]{1,2}):([0-9]{2})/\2 mins past \1/g' text/regex27.txt

