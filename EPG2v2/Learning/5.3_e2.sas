
proc sort data=PG2.NP_Codelookup out=work.s1;
	by ParkCode;
run;

proc sort data=PG2.np_2016 out=work.s2;
	by ParkCode;
run;

data
	work.parkStats(keep=ParkCode ParkName Year Month DayVisits)
	work.parkOther(keep=ParkCode ParkName);
		merge
			work.s1
			work.s2(in=inNP2016);
	by ParkCode;
	if inNP2016=1 then output work.parkStats;
	else output work.parkOther;
run;