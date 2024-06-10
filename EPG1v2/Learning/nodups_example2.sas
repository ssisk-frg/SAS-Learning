proc sort data=pg1.eu_occ(keep=geo country) out=country_list nodupkey;
	by Geo Country;
run;

proc freq data=country_list;
run;