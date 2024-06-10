%let animal=Bird;

data mammal;
	set pg1.np_species;
	drop Abundance Seasonality Conservation_Status;
	where Category like "&animal";
run;

proc freq data=mammal;
	tables Record_Status;
run;