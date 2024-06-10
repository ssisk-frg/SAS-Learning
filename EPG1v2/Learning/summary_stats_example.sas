proc print DATA=PG1.storm_summary (obs=10);
	var Season Name Basin MaxWindMPH MinPressure StartDate EndDate;
run;

/* calculate summary stats */
proc means DATA=PG1.storm_summary;
	var MaxWindMPH MinPressure;
run;

/* calculate extreme stats */
proc univariate DATA=PG1.storm_summary;
	var MaxWindMPH MinPressure;
run;

/* list unique values and frequencies */
proc freq data=PG1.storm_summary;
	tables Basin Type Season;
run;