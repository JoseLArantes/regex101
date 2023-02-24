#!/bin/bash
echo "Backslash to scape special symbols are needed inside square brackers when symbols are ^ or - or \ "

grep 'x[#:\^]y' text/regex13.txt
