***********************************************************;
*  LESSON 4, PRACTICE 6                                   *;
*  a) Run the program and review the results. Notice that *;
*     some of the park types are still displayed as codes *;
*     because the custom format does not include a label  *;
*     for those values.                                   *;
*  b) Write a PROC FORMAT step that uses the CNTLOUT=     *;
*     option to create a table named TYPFMTOUT from the   *;
*     existing $TypCode format. Run the step and view the *;
*     output table. The TYPFMTOUT table contains several  *;
*     extra columns, but the critical columns for this    *;
*     practice are FmtName, Start, and Label. Notice that *;
*     the values for FmtName do not include the $ as a    *;
*     prefix.                                             *;
*  c) Open the PG2.NP_NEWCODES table. Notice that it      *;
*     contains the format name, the Type values, and the  *;
*     labels in the FmtName, Start, and Label columns.    *;
*  d) Write a DATA step that creates a table named        *;
*     typfmt_update by concatenating the output table     *;
*     from PROC FORMAT and the pg2.np_newcodes table.     *;
*     Change the values of FmtName to $TypCode and keep   *;
*     only the FmtName, Start, and Label columns.         *;
*  e) Write a PROC FORMAT that re-creates the $TypCode    *;
*     format using the CNTLIN= option to read the new     *;
*     table that contains the updated format values.      *;
*  f) Run the PROC FREQ step again and verify that all    *;
*     Type codes are displayed with labels.               *;
***********************************************************;

proc format cntlin=pg2.np_types_regions;
run;

proc format cntlin=typfmtout;
run;

data typfmt_update;
	set 

title1 'Park Frequencies by Type';
proc freq data=pg2.np_summary;
    table Type / nocum;
    format Type $TypCode.;
run;
title;
