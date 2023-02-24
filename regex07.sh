#!/bin/bash
echo "Pattern negation where some characters are specified"
echo "get when m and h does not occours in the first position"

grep '[^mh]oo' text/regex07.txt
