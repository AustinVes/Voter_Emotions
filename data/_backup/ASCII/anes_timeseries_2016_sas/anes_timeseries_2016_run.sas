/*   THIS FILE IS:       anes_timeseries_2016_run.sas                              */
/*   RELEASE VERSION:    20190904 (September 4, 2019)                              */
/*                                                                                 */
/*                                                                                 */
/*   This file (that you are reading) may be opened and run in SAS with the        */
/*   modification of adding paths and a location for LIBRARY.                      */
/*   The resulting file will be named anes_timeseries_2012 in the location         */
/*   indicated for LIBRARY                                                         */
/*                                                                                 */
/*   NOTE: By default, the assignment of missing values are commented out in       */
/*   the program below, but can be restored by removing the asterisk (*) at the    */
/*   start of the relevant line. Format definitions and assignments are also       */
/*   commented out by default.                                                     */


options linesize=240 pagesize=32000;
libname library "";

filename formats  "anes_timeseries_2016_codelabelsdefine.sas";
filename rawdata  "anes_timeseries_2016_rawdata.txt";
filename readdata "anes_timeseries_2016_columns.sas";
filename varlab   "anes_timeseries_2016_varlabels.sas";
filename codelab  "anes_timeseries_2016_codelabelsassign.sas";
*filename missval  "anes_timeseries_2016_missingdata.sas";

%include formats  ;
%include readdata ;
%include varlab   ;
%include codelab  ;
*%include missval  ;

run;
