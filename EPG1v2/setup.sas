

/**********************************************/
/* DO NOT EDIT THE CODE BELOW                 */
/**********************************************/
%let path=/home/ssisk/NEET/SAS/EPG1v2/data;
libname PG1 "&path";

%include "&path/pg1v2.sas";

proc contents data=pg1._all_ nods;
run;