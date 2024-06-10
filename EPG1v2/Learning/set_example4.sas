data fox;
	set pg1.np_species;
	where Category="Mammal" and Common_Names like '%Fox%' and Common_Names not like "Squirrel";
	drop Category Record_Status Occurence Nativeness;
run;

proc sort data=fox;
by Common_Names;
run;