data eu_occ2016;
	set pg1.eu_occ;
	where YearMon like '2016%';
	format Hotel COMMA17. ShortStay COMMA17. Camp COMMA17.;
	drop Geo;
run;