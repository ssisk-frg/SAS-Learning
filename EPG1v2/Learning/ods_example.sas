ods select extremeobs;
proc univariate data=pg1.eu_occ nextrobs=10;
    var camp;
run;