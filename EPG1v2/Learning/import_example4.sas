proc import
	datafile="/home/u63903055/EPG1V2/data/np_traffic.dat"
	dbms=dlm
	out=traffic2
	replace;
	guessingrows=MAX;
	delimiter='|';
run;

