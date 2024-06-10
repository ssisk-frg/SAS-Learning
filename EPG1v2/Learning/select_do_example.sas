data parks monuments;
	set pg1.np_summary;
	where Type in ("NP", "NM");
	Campers = sum(OtherCamping, TentCampers, RVCampers, BackcountryCampers);
	format Campers COMMA17.;
	length ParkType $ 8;
	select (Type);
		when ("NP")
			do;
				ParkType = "Park";
				output parks;
			end;
		when ("NM")
			do;
				ParkType="Monument";
				output monuments;
			end;
/* 		otherwise put ""; */
	end;
	keep Reg ParkName DayVisits OtherLodging Campers ParkType;
run;