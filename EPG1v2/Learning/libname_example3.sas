OPTIONS Validvarname=v7;

libname NP xlsx "/home/u63903055/EPG1V2/data/np_info.xlsx";

proc contents data=NP.parks;
run;

libname NP clear;
