data cuyahoga_maxtraffic;
	set pg2.np_monthlytraffic;
	where ParkName="Cuyahoga Valley NP";
	retain TrafficMax 0 MonthMax LocationMax;
	if Count>TrafficMax then do;
		TrafficMax=Count;
		MonthMax=Month;
		LocationMax=Location;
	end;
	format Count TrafficMax COMMA15.;
	keep Location Month Count TrafficMax MonthMax LocationMax;
run;
	