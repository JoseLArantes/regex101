#!/bin/bash
echo "Making substitution on a file"

echo "Using sed command to make the substitutions"
echo "General use is sed -r 's/pattern/replacement/g inputfile, where g stands for global (all occurencies) and s for substitution"

echo "In the given example, phone substitutions, we have the pattern of '\(([0-9]{3})\)(.[0-9]{3}.[0-9]{4})' that we want to replace to a different format." 
echo "See the pattern here:"
grep -E '\(([0-9]{3})\)(.[0-9]{3}.[0-9]{4})' text/regex30.txt

echo "Notice that we can identify 2 groups of occurencies, \1, \2. The result on the example will be the same number removing the parenthesis."

sed -r 's/\(([0-9]{3})\)(.[0-9]{3}.[0-9]{4})/\1\2/g' text/regex30.txt
