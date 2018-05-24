Proc means stackodsoutput count of the number of ones in column

For copy and paste use the .sas file not readme

You can use proc means stackodsoutput with SAS

  WPS does not support statckodsoutput yet

   ERROR: Option "stackodsoutput" is not known for the PROC MEANS statement

see
https://communities.sas.com/t5/Base-SAS-Programming/count-of-the-number-of-one-in-column/m-p/464765


HAVE

Up to 40 obs WORK.HAVE total obs=23

Obs    VAR1    VAR2    VAR3    VAR4    VAR5    VAR6    VAR7

  1      0       0       0       0       1       1       1
  2      0       0       0       0       0       1       1
  3      1       0       0       0       0       0       0
  4      0       0       1       0       0       0       0
  5      0       1       0       1       0       1       0
  6      0       0       0       0       0       0       1
  7      0       0       1       1       1       0       0
 ...

WANT
====

 WORK.WANT total obs=7

  VARIABLE    SUM

    VAR1       3
    VAR2       3
    VAR3       5
    VAR4       5
    VAR5       4
    VAR6       7
    VAR7       4


PROCESS
=======

ods output summary=want;
Proc means data=have  maxdec=0 stackodsoutput sum;
   var var1-var7;
run;quit;

*                _              _       _
 _ __ ___   __ _| | _____    __| | __ _| |_ __ _
| '_ ` _ \ / _` | |/ / _ \  / _` |/ _` | __/ _` |
| | | | | | (_| |   <  __/ | (_| | (_| | || (_| |
|_| |_| |_|\__,_|_|\_\___|  \__,_|\__,_|\__\__,_|

;

Data have;
infile cards truncover ;
input Var1-var7;
cards;4
0 0 0 0 1 1 1
0 0 0 0 0 1 1
1 0 0 0 0 0 0
0 0 1 0 0 0 0
0 1 0 1 0 1 0
0 0 0 0 0 0 1
0 0 1 1 1 0 0
0 0 0 0 0 0 0
0 0 0 0 0 0 0
0 0 0 0 0 0 0
0 0 0 0 0 0 0
0 0 0 0 0 0 0
0 0 0 1 0 1 0
0 0 1 1 1 0 0
1 1 0 0 0 0 0
0 0 0 0 1 1 1
0 0 0 0 0 0 0
0 0 0 0 0 0 0
0 0 1 0 0 0 0
0 1 0 0 0 1 0
0 0 0 0 0 0 0
1 0 0 0 0 1 0
0 0 1 1 0 0 0
;;;;
run;quit;

*          _       _   _
 ___  ___ | |_   _| |_(_) ___  _ __
/ __|/ _ \| | | | | __| |/ _ \| '_ \
\__ \ (_) | | |_| | |_| | (_) | | | |
|___/\___/|_|\__,_|\__|_|\___/|_| |_|

;

see process

