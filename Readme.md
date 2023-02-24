### Pattern example 02 

"Get pattern where there is only one char in the middle of foobar"
`grep 'foo.bar' text/regex02.txt`

### Pattern example 03
"Pattern where there is someting in the middle of foobar"
`grep 'foo.*bar' text/regex03.txt`
### Pattern example 04

"Pattern where there is space or not between foo and bar"
`grep 'foo\s*bar' text/regex04.txt`

### Pattern example 05
"Pattern where some characters are specified"
"get when f,c and l occurs in the first position"

`grep '[fcl]oo' text/regex05.txt`

### Pattern example06
"Pattern where some characters are specified"
"get when f,c,d,o,l and b occurs in the first position"

`grep '[fcdplb]oo' text/regex06.txt`

### Pattern example 07
"Pattern negation where some characters are specified"
"get when m and h does not occours in the first position"

`grep '[^mh]oo' text/regex07.txt`

### Pattern example 08
"Pattern where characters are alphabetic sequence"

`grep '[i-m]oo' text/regex08.txt`

### Pattern example 09
"Pattern where characters are alphabetic sequence and one of them are not"

`grep '[i-mz]oo' text/regex09.txt`

### Pattern example 10
"Pattern where characters are alphabetic sequence and union of upper and lower case"

`grep '[i-mI-Mz]oo' text/regex10.txt`

### Pattern example 11
"Backslash to scape special symbols"

`grep 'x*\.y*' text/regex11.txt`

### Pattern example 12
"Backslash to scape special symbols not needed when inside square brackets in some cases like '.'"

`grep 'x[#:.]y' text/regex12.txt`

### Pattern example 13
"Backslash to scape special symbols are needed inside square brackers when symbols are ^ or - or \ "

`grep 'x[#:\^]y' text/regex13.txt`

### Pattern example 14
"Backslash needs always to be scapable independent of where it is placed"

`grep 'x[#\\\^]y' text/regex14.txt`

### Pattern example 15
"Where all occurencies starts with a pattern"

`grep '^foo' text/regex15.txt`

### Pattern example 16
"Where all occurencies ends with a pattern"
"This expression does not work on mac terminal since line terminator is CRLF"

"Change line terminator on that file by running the following command"
`vim text/regex16.txt  -c "set ff=unix" -c ":wq"`

`grep '.*bar$' text/regex16.txt`

### Pattern example 17
"Where an occurency starts and ends with a single pattern"
"This expression does not work on mac terminal since line terminator is CRLF"
"Change line terminator on that file by running the following command"

`vim text/regex17.txt  -c "set ff=unix" -c ":wq"`

`grep '^foo$' text/regex17.txt`

### Pattern example 18
"Where an occurency starts and ends with a single pattern and it is repetition of same sequence"

"The -E is required for any symbol from POSIX extended set like in this case the {}"
"On this example it will take a sequence of 3 numbers only"

`grep '^[0-9]{3}$' text/regex18.txt`

### Pattern example 19
"Where an occurency starts and ends with a range of repetition of same sequence"


"The -E is required for any symbol from POSIX extended set like in this case the {}"
"On this example it will take a sequence of 4 to 6 numbers"
"a{m,n} represents at least m and at most n repetitions of what precedes them"

`grep -E '^[a-z]{4,6}$' text/regex19.txt`

### Pattern example 20
"Where a pattern has a repetition of something"


"The -E is required for any symbol from POSIX extended set like in this case the {}"
"On this example it will take the wanted repetition of ha"
"Parenthesis is used to group and threat as a single entity"

`grep -E '(ha){4}' text/regex20.txt`

### Pattern example 21
"Where a pattern has a repetition of something"

`vim text/regex21.txt`  -c "set ff=unix" -c ":wq"

"The -E is required for any symbol from POSIX extended set like in this case the {}"
"On this example it will take the selected number of repetition of ha"
"{,n} represents at most n repetitions of what immediately precedes it"

`grep -E '^(ha){,2}$' text/regex21.txt`

"If not running on Mac, try to use a linux container like the following"
`docker run --rm -v $pwd:/opt ubuntu:20.04 `grep -E '^(ha){,2}$' /opt/text/regex21.txt`

### Pattern example 22
"Where a pattern one of more ocurrencies of something"

"The -E is required for any symbol from POSIX extended set like in this case the {}"
"On this example it will take when there are from 1 to 4 'a's between foo and bar. Scapes where there are no ocurrencies like in foobar"

"a+ represent 1 or more occurencies of a, the char that precedes it"

`grep -E '^fooa+bar' text/regex22.txt`

### Pattern example 23
"Where a pattern has 1 or 0 occurencies of something"

"The -E is required for any symbol from POSIX extended set like in this case the {}"
"On this example it will take where 's' occurs 1 or 0 times"

"a? -> 0 or 1 occurencies of 'a', the char that precedes it"

`grep -E 'https?://website' text/regex23.txt`

### Pattern example 24
"Where a pattern has either one or another occurencies"

"The -E is required for any symbol from POSIX extended set like in this case the {}"
"On this example it will take where something or another thing  occurs"

"a|b -> represents a or b, and each one can be a multi-character string"
"() makes them to be represented as a single entity"

`grep -E '(log|ply)wood' text/regex24.txt`

### Pattern example 25
"Making substitution on a file"

"Using sed command to make the substitutions"
"General use is `sed -r 's/pattern/replacement/g inputfile, where g stands for global (all occurencies) and s for substitution"

"In the given example we have the pattern of ([0-9]+)x([0-9]+) that we want to replace to something different. We want to replace the x for 'pix by' and add 'pix' at the end of the second number"
"Notice that we have 2 groups of ([0-9]+) here, and to represent them we can use \1 for the first group and \2 for the second"

`sed -r 's/([0-9]+)x([0-9]+)/\1 pix by \2 pix/g' text/regex25.txt`

### Pattern example 26
"Making substitution on a file"

"Using sed command to make the substitutions"
"General use is `sed -r 's/pattern/replacement/g inputfile, where g stands for global (all occurencies) and s for substitution"

"In the given example we have want to put the surname in the front of firstname and put a comma between them. The pattern is '([a-zA-Z]+) ([a-zA-Z]+)'"
"Show the pattern:"

`grep -E '([a-zA-Z]+) ([a-zA-Z]+)' text/regex26.txt`

"Notice that we have 2 groups again, and to represent them we can use \1 for the first group and \2 for the second"

`sed -r 's/([a-zA-Z]+) ([a-zA-Z]+)/\2,\1/g' text/regex26.txt`

### Pattern example 27
"Making substitution on a file"

"Using sed command to make the substitutions"
"General use is `sed -r 's/pattern/replacement/g inputfile, where g stands for global (all occurencies) and s for substitution"

"In the given example we have the pattern of ([0-9]{1,2}):([0-9]{2}) that we want to replace to something different." 
"See the pattern here:"
`grep -E '([0-9]{1,2}):([0-9]{2})' text/regex27.txt`

"Notice that we have 2 groups here, and to represent them we can use \1 for the first group and \2 for the second"

`sed -r 's/([0-9]{1,2}):([0-9]{2})/\2 mins past \1/g' text/regex27.txt`

### Pattern example 28
"Making substitution on a file"

"Using sed command to make the substitutions"
"General use is `sed -r 's/pattern/replacement/g inputfile, where g stands for global (all occurencies) and s for substitution"

"In the given example, phone substitutions, we have the pattern of [0-9]{3}.[0-9]{3}.([0-9]{4}) that we want to replace to a different format." 
"See the pattern here:"

`grep -E '[0-9]{3}.[0-9]{3}.([0-9]{4})' text/regex28.txt`

"Notice that we can identify a single group of occurencies and represent it with \1. On substitutions we don't need to scape."

`sed -r 's/[0-9]{3}.[0-9]{3}.([0-9]{4})/xxx.xxx.\1/g' text/regex28.txt`


### Pattern example 29
"Making substitution on a file"

"Using sed command to make the substitutions"
"General use is `sed -r 's/pattern/replacement/g inputfile, where g stands for global (all occurencies) and s for substitution"

"In the given example, date substitutions, we have the pattern of ([A-Za-z]{3}) ([0-9]{1,2})[a-z]{2} [0-9]{2}([0-9]{2}) that we want to replace to a different format." 
"See the pattern here:"

`grep -E '([A-Za-z]{3}) ([0-9]{1,2})[a-z]{2} [0-9]{2}([0-9]{2})' text/regex29.txt`

"Notice that we can identify some groups of occurencies, we can have 3 of more groups, and we can represent them with \1, \2 and \3. The result on the example will be a new date format."

`sed -r 's/([A-Za-z]{3}) ([0-9]{1,2})[a-z]{2} [0-9]{2}([0-9]{2})/\2-\1-\3/g' text/regex29.txt`

### Pattern example 30
"Making substitution on a file"

"Using sed command to make the substitutions"
"General use is `sed -r 's/pattern/replacement/g inputfile, where g stands for global (all occurencies) and s for substitution"

"In the given example, phone substitutions, we have the pattern of '\(([0-9]{3})\)(.[0-9]{3}.[0-9]{4})' that we want to replace to a different format." 
"See the pattern here:"
`grep -E '\(([0-9]{3})\)(.[0-9]{3}.[0-9]{4})' text/regex30.txt`

"Notice that we can identify 2 groups of occurencies, \1, \2. The result on the example will be the same number removing the parenthesis."

`sed -r 's/\(([0-9]{3})\)(.[0-9]{3}.[0-9]{4})/\1\2/g' text/regex30.txt`
