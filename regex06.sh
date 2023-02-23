#!/bin/bash
echo "Pattern where some characters are specified"
echo "get when f,c,d,o,l and b occurs in the first position"

grep '[fcdplb]oo' regex06.txt
