data data stocks2;
	set pg2.stocks2(rename=(Volume=CharVolume Date=CharDate));
	Volume=input(CharVolume,comma12.);
	Date=input(Chardate,date9.);
	drop Char:;
run;

proc contents data=stocks2;
run;