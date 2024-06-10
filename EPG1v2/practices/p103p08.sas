***********************************************************;
*  LESSON 3, PRACTICE 8                                   *;
*    a) Modify the PROC SORT step to read PG1.NP_SUMMARY  *;
*       and create a temporary sorted table named         *;
*       NP_SORT.                                          *;
*    b) Add a BY statement to order the data by Reg and   *;
*       descending DayVisits.                             *;
*    c) Add a WHERE statement to select Type equal to NP. *;
*       Submit the program.                               *;
***********************************************************;

proc sort data=pg1.np_summary out=np_sort;
	by Reg descending DayVisits;
	where Type EQ 'NP';
run;

