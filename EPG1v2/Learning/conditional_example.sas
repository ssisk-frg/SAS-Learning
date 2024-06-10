data parks monuments;
	set pg1.np_summary;
	where Type in ("NP", "NM");
	Campers = sum(OtherCamping, TentCampers, RVCampers, BackcountryCampers);
	format Campers COMMA17.;
	if Type = "NP" then do;
		ParkType = "Park";
		output parks;
	end;
	else do;
		ParkType="Monument";
		output monuments;
	end;
	
	keep Reg ParkName DayVisits OtherLodging Campers ParkType;
run;