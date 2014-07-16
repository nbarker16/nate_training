* Run some basic regressions on auto.dta.

version 10

set more off

sysuse auto, clear

*Create a local of controls 
local controls weight length turn

*Run basic regression of price on mpg
regress price mpg `controls' 

*Limiting the regression to only domestic cars
regress price mpg `controls' if foreign == 0

*Correlation between mpg and weight?
corr mpg weight

*Changing controls and re-running regression
local controls2 gear_ratio displacement
regress price mpg `controls2'

forv n = 1/100000{
	di "Que bueno!"
	sleep 1000
	di "Eres increible!"
	sleep 1000
	di "poop"
	sleep 1000
}
