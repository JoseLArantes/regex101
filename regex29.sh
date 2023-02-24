#!/bin/bash
echo "Making substitution on a file"

echo "Using sed command to make the substitutions"
echo "General use is sed -r 's/pattern/replacement/g inputfile, where g stands for global (all occurencies) and s for substitution"

echo "In the given example, date substitutions, we have the pattern of ([A-Za-z]{3}) ([0-9]{1,2})[a-z]{2} [0-9]{2}([0-9]{2}) that we want to replace to a different format." 
echo "See the pattern here:"

grep -E '([A-Za-z]{3}) ([0-9]{1,2})[a-z]{2} [0-9]{2}([0-9]{2})' text/regex29.txt

echo "Notice that we can identify some groups of occurencies, we can have 3 of more groups, and we can represent them with \1, \2 and \3. The result on the example will be a new date format."

sed -r 's/([A-Za-z]{3}) ([0-9]{1,2})[a-z]{2} [0-9]{2}([0-9]{2})/\2-\1-\3/g' text/regex29.txt

