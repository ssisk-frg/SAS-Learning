
title "Park Types by Region";
proc freq data=pg1.np_codelookup nlevels;
	tables Type*Region / nocol;
	where Type not like "%Other%";
run;


title "Selected Park Types by Region";
ods graphics on;
proc freq data=pg1.np_codelookup nlevels order=freq;
	tables Type*Region / nocol crosslist
		plots=freqplot(groupby=row scale=grouppercent orient=horizontal);
	where Type in ('National Historic Site', 'National Monument', 'National Park');
run;