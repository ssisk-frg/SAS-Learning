proc sort data=pg2.np_acres out=park_acres_out(keep=Region ParkName State GrossAcres);
	by Region ParkName;
run;

data singlestate multistate;
	set work.park_acres_out;
	by Region ParkName;
	if first.ParkName=1 and last.ParkName then output singlestate;
	else output multistate;
	format GrossAcres comma15.;
run;
	
