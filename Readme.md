#!/bin/bash
echo "Get pattern where there is only one char in the middle of foobar"
grep 'foo.bar' text/regex02.txt
#!/bin/bash
echo "Pattern where there is someting in the middle of foobar"
grep 'foo.*bar' text/regex03.txt
#!/bin/bash
echo "Pattern where there is space or not between foo and bar"
grep 'foo\s*bar' text/regex04.txt
#!/bin/bash
echo "Pattern where some characters are specified"
echo "get when f,c and l occurs in the first position"

grep '[fcl]oo' text/regex05.txt
#!/bin/bash
echo "Pattern where some characters are specified"
echo "get when f,c,d,o,l and b occurs in the first position"

grep '[fcdplb]oo' text/regex06.txt
#!/bin/bash
echo "Pattern negation where some characters are specified"
echo "get when m and h does not occours in the first position"

grep '[^mh]oo' text/regex07.txt
#!/bin/bash
echo "Pattern where characters are alphabetic sequence"

grep '[i-m]oo' text/regex08.txt
#!/bin/bash
echo "Pattern where characters are alphabetic sequence and one of them are not"

grep '[i-mz]oo' text/regex09.txt
#!/bin/bash
echo "Pattern where characters are alphabetic sequence and union of upper and lower case"

grep '[i-mI-Mz]oo' text/regex10.txt
#!/bin/bash
echo "Backslash to scape special symbols"

grep 'x*\.y*' text/regex11.txt
#!/bin/bash
echo "Backslash to scape special symbols not needed when inside square brackets in some cases like '.'"

grep 'x[#:.]y' text/regex12.txt
#!/bin/bash
echo "Backslash to scape special symbols are needed inside square brackers when symbols are ^ or - or \ "

grep 'x[#:\^]y' text/regex13.txt
#!/bin/bash
echo "Backslash needs always to be scapable independent of where it is placed"

grep 'x[#\\\^]y' text/regex14.txt
#!/bin/bash
echo "Where all occurencies starts with a pattern"

grep '^foo' text/regex15.txt
#!/bin/bash
echo "Where all occurencies ends with a pattern"
echo "This expression does not work on mac terminal since line terminator is CRLF"
echo "Change line terminator on that file by running the following command"
vim text/regex16.txt  -c "set ff=unix" -c ":wq"

grep '.*bar$' text/regex16.txt
#!/bin/bash
echo "Where an occurency starts and ends with a single pattern"
echo "This expression does not work on mac terminal since line terminator is CRLF"
echo "Change line terminator on that file by running the following command"

vim text/regex17.txt  -c "set ff=unix" -c ":wq"

grep '^foo$' text/regex17.txt
#!/bin/bash
echo "Where an occurency starts and ends with a single pattern and it is repetition of same sequence"

vim text/regex18.txt  -c "set ff=unix" -c ":wq"

echo "The -E is required for any symbol from POSIX extended set like in this case the {}"
echo "On this example it will take a sequence of 3 numbers only"

grep '^[0-9]{3}$' text/regex18.txt
#!/bin/bash
echo "Where an occurency starts and ends with a range of repetition of same sequence"

vim text/regex19.txt  -c "set ff=unix" -c ":wq"

echo "The -E is required for any symbol from POSIX extended set like in this case the {}"
echo "On this example it will take a sequence of 4 to 6 numbers"
echo "a{m,n} represents at least m and at most n repetitions of what precedes them"

grep -E '^[a-z]{4,6}$' text/regex19.txt
#!/bin/bash
echo "Where a pattern has a repetition of something"

vim text/regex20.txt  -c "set ff=unix" -c ":wq"

echo "The -E is required for any symbol from POSIX extended set like in this case the {}"
echo "On this example it will take the wanted repetition of ha"
echo "Parenthesis is used to group and threat as a single entity"

grep -E '(ha){4}' text/regex20.txt
#!/bin/bash
echo "Where a pattern has a repetition of something"

vim text/regex21.txt  -c "set ff=unix" -c ":wq"

echo "The -E is required for any symbol from POSIX extended set like in this case the {}"
echo "On this example it will take the selected number of repetition of ha"
echo "{,n} represents at most n repetitions of what immediately precedes it"

grep -E '^(ha){,2}$' text/regex21.txt

echo "If not running on Mac, try to use a linux container like the following"
echo "docker run --rm -v $pwd:/opt ubuntu:20.04 grep -E '^(ha){,2}$' /opt/text/regex21.txt "
#!/bin/bash
echo "Where a pattern one of more ocurrencies of something"

vim text/regex22.txt  -c "set ff=unix" -c ":wq"

echo "The -E is required for any symbol from POSIX extended set like in this case the {}"
echo "On this example it will take when there are from 1 to 4 'a's between foo and bar. Scapes where there are no ocurrencies like in foobar"
echo "a+ represent 1 or more occurencies of a, the char that precedes it"

grep -E '^fooa+bar' text/regex22.txt

#!/bin/bash
echo "Where a pattern has 1 or 0 occurencies of something"

vim text/regex23.txt  -c "set ff=unix" -c ":wq"

echo "The -E is required for any symbol from POSIX extended set like in this case the {}"
echo "On this example it will take where 's' occurs 1 or 0 times"
echo "a? -> 0 or 1 occurencies of 'a', the char that precedes it"

grep -E 'https?://website' text/regex23.txt
#!/bin/bash
echo "Where a pattern has either one or another occurencies"

vim text/regex24.txt  -c "set ff=unix" -c ":wq"

echo "The -E is required for any symbol from POSIX extended set like in this case the {}"
echo "On this example it will take where something or another thing  occurs"
echo "a|b -> represents a or b, and each one can be a multi-character string"
echo "() makes them to be represented as a single entity"

grep -E '(log|ply)wood' text/regex24.txt
