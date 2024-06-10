proc import
	datafile="/home/u63903055/EPG1V2/data/storm_damage.csv"
	dbms=csv
	out=storm_damage_import
	replace;
run;

proc contents data=storm_damage_import;
run;
