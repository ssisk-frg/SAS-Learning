proc print data=pg1.np_traffic;
	var ParkName Location Count;
	where Count NE 0 
	and UPCASE(Location) like '%MAIN ENTRANCE%';
run;