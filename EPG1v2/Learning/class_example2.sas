
proc means data=pg1.np_multiyr NOPRINT;
	var Visitors;
	class Region Year;
	ways 2;
	output
		out=top3parks(drop=_freq_ _type_)
		sum=TotalVisitors
		idgroup(max(Visitors) out[3] (Visitors Parkname)=);
run;
		
	
	
	