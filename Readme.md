## Exercise 
"Get pattern where there is only one char in the middle of foobar"
`grep 'foo.bar' text/regex02.txt`

## Exercise 
"Pattern where there is someting in the middle of foobar"
`grep 'foo.*bar' text/regex03.txt`

## Exercise 
"Pattern where there is space or not between foo and bar"
`grep 'foo\s*bar' text/regex04.txt`

## Exercise 
"Pattern where some characters are specified"
"get when f,c and l occurs in the first position"

`grep '[fcl]oo' text/regex05.txt`

## Exercise 
"Pattern where some characters are specified"
"get when f,c,d,o,l and b occurs in the first position"

`grep '[fcdplb]oo' text/regex06.txt`

## Exercise 
"Pattern negation where some characters are specified"
"get when m and h does not occours in the first position"

`grep '[^mh]oo' text/regex07.txt`

## Exercise 
"Pattern where characters are alphabetic sequence"

`grep '[i-m]oo' text/regex08.txt`

## Exercise 
"Pattern where characters are alphabetic sequence and one of them are not"

`grep '[i-mz]oo' text/regex09.txt`

## Exercise 
"Pattern where characters are alphabetic sequence and union of upper and lower case"

`grep '[i-mI-Mz]oo' text/regex10.txt`

## Exercise 
"Backslash to scape special symbols"

`grep 'x*\.y*' text/regex11.txt`

## Exercise 
"Backslash to scape special symbols not needed when inside square brackets in some cases like '.'"

`grep 'x[#:.]y' text/regex12.txt`

## Exercise 
"Backslash to scape special symbols are needed inside square brackers when symbols are ^ or - or \ "

`grep 'x[#:\^]y' text/regex13.txt`

## Exercise 
"Backslash needs always to be scapable independent of where it is placed"

`grep 'x[#\\\^]y' text/regex14.txt`

## Exercise 
"Where all occurencies starts with a pattern"

`grep '^foo' text/regex15.txt`

## Exercise 
"Where all occurencies ends with a pattern"
"This expression does not work on mac terminal since line terminator is CRLF"
"Change line terminator on that file by running the following command"
vim text/regex16.txt`  -c "set ff=unix" -c ":wq"

`grep '.*bar$' text/regex16.txt`

## Exercise 
"Where an occurency starts and ends with a single pattern"
"This expression does not work on mac terminal since line terminator is CRLF"
"Change line terminator on that file by running the following command"

vim text/regex17.txt`  -c "set ff=unix" -c ":wq"

`grep '^foo$' text/regex17.txt`
