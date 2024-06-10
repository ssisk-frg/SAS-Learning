***********************************************************;
*  LESSON 3, PRACTICE 4                                   *;
*  a) Run the program and examine the data. Notice that   *;
*     ParkName includes a code at the end of each value   *;
*     that represents the park type. Also notice that     *;
*     some of the values for Location are in uppercase.   *;
*  b) Add a LENGTH statement to create a new              *;
*     five-character column named Type.                   *;
*  c) Add an assignment statement that uses the SCAN      *;
*     function to extract the last word from the ParkName *;
*     column and assigns the resulting value to Type.     *;
*  d) Add an assignment statement to use the UPCASE and   *;
*     COMPRESS functions to change the case of Region and *;
*     remove any blanks.                                  *;
*  e) Add an assignment statement to use the PROPCASE     *;
*     function to change the case of Location.            *;
***********************************************************;
proc sort data=pg2.np_yearlytraffic out=np_yt;
	by ParkType ParkName;
run;

data clean_traffic;
/* 	set work.np_yt; */
	set pg2.np_monthlytraffic;
	drop Year;
/* 	by ParkType; */
	length Type $ 5;
	Type=scan(ParkName, -1);
	Region=compress(upcase(Region));
	Location=propcase(Location);
/* 	if First.ParkType=1 then TypeCount=0; */
/* 	TypeCount+Count; */
/* 	if Last.ParkType=1 then output; */
/* 	format TypeCount COMMA12.; */
/* 	keep ParkType TypeCount; */
run;
