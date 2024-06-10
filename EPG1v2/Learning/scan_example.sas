data np_summary2;
	set pg1.np_summary;
	ParkType = scan(Parkname, -1);
	keep Reg Type ParkName ParkType;
run;