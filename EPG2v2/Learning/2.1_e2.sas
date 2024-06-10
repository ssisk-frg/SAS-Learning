data parkTypeTraffic;
	set pg2.np_yearlytraffic;
	where ParkType in ("National Monument", "National Park");
	if ParkType="National Monument" then MonumentTraffic+Count;
	else ParkTraffic+Count;
	format MonumentTraffic COMMA15. ParkTraffic COMMA15.;
run;

title 'Accumulating Traffic Totals for Park Types';
proc print data=work.parkTypeTraffic;
	var ParkType ParkName Location Count MonumentTraffic ParkTraffic;
run;
title;
	