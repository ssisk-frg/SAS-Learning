proc print data=pg1.eu_occ;
	where Hotel > 40000000
	and ShortStay IS MISSING
	and	Camp IS MISSING;
run;