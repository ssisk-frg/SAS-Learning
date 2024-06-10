data myclass;
	set sashelp.class;
	where Age >= 15;
	format Height 4.1 Weight 3.;
run;