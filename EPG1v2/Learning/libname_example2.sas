options VALIDVARNAME=v7;
libname xlstorm xlsx "/home/u63903055/EPG1V2/data/storm.xlsx";

proc contents data=xlstorm.storm_summary;
run;

libname xlstorm clear;
