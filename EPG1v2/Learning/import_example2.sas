proc import 
	datafile="/home/u63903055/EPG1V2/data/storm_damage.tab"
    dbms=tab
    out=storm_damage_tab
    replace;
run;
