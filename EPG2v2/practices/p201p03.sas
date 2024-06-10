***********************************************************;
*  LESSON 1, PRACTICE 3                                   *;
*  a) Modify the DATA step to create three tables:        *;
*     monument, park, and other. Use the value of         *;
*     ParkType as indicated above to determine which      *;
*     table the row is output to.                         *;
*  b) Drop ParkType from the monument and park tables.    *;
*     Drop Region from all three tables.                  *;
*  c) Submit the program and verify the output.           *;
***********************************************************;

data  monument park other;
	set pg2.np_yearlytraffic;
	
	if ParkType="National Monument" then do;
		drop ParkType;
		output monument;
	end;
	
	else if ParkType="National Park" then do;
		drop ParkType;
		output park;
	end;
	else do;
		output other;
	end;
	drop Region;

run;
