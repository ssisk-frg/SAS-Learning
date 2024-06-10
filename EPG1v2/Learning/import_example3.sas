

PROC IMPORT
	datafile="/home/u63903055/EPG1V2/data/np_traffic.csv"
	dbms=csv
	out=traffic
	replace;
	guessingrows=MAX;
run;

proc contents data=traffic;
run;