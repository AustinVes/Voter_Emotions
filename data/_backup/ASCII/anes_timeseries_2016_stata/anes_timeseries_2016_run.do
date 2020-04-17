/*   THIS FILE IS:       anes_timeseries_2016_run.do                               */
/*   RELEASE VERSION:    20190904 (September 4, 2019)                              */
/*                                                                                 */
/*                                                                                 */
/*   This file (that you are reading) may be opened and run in Stata with the      */
/*   modification of adding paths in the run file (this file) and dictionary file  */
/*   (anes_cdf_col.dct).                                                           */
/*                                                                                 */
/*   NOTE: By default, the assignment of missing values are commented out in       */
/*   the program below, but can be restored by removing the asterisk (*) at the    */
/*   start of the relevant line.                                                   */

set memory 200m
set more off

     
infix using anes_timeseries_2016_columns.dct
do anes_timeseries_2016_varlabels.do 
do anes_timeseries_2016_codelabelsdefine.do
do anes_timeseries_2016_codelabelsassign.do
*do anes_timeseries_2016_missingdata.do

save anes_timeseries_2016.dta                                      
