#!/bin/bash
echo "Backslash to scape special symbols not needed when inside square brackets in some cases like '.'"

grep 'x[#:.]y' text/regex12.txt
