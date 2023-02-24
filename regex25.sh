#!/bin/bash
echo "Making substitution on a file"

echo "Using sed command to make the substitutions"
echo "General use is sed -r 's/pattern/replacement/g inputfile, where g stands for global (all occurencies) and s for substitution"

echo "In the given example we have the pattern of ([0-9]+)x([0-9]+) that we want to replace to something different. We want to replace the x for 'pix by' and add 'pix' at the end of the second number"
echo "Notice that we have 2 groups of ([0-9]+) here, and to represent them we can use \1 for the first group and \2 for the second"

sed -r 's/([0-9]+)x([0-9]+)/\1 pix by \2 pix/g' text/regex25.txt
