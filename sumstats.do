* Calculate some summary statistics for auto.dta.

version 10
* FIXING THE NAME

set more off

sysuse auto, clear

*Describe key variables:
describe make price weight length

*Summary stats:
summarize price weight length
sort price
list weight length in 1/10

tabulate weight if price > 10000

assert inlist(foreign, 0, 1)
bys foreign: summarize price

tabstat mpg, by(foreign)
reg foreign weight

/*
* This code is wonderful, and should be saved for a special event
=======
forv n = 1/10000000 {
	nicewords, smiley
	sleep 1000
}
>>>>>>> 5bae15a6bbcc4be126f987cefbefcdcbc07a728b
*/
