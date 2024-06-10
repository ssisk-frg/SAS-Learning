ods graphics on;
title "Categories of Reported Species";
title2 "in the Everglades";
proc freq data=pg1.np_species order=freq;
	tables Category / nocum plots=freqplot();
	where Species_ID like "EVER%"
	and Category .= "Vascular Plant";
run;

title;