/*   THIS FILE IS:       anes_timeseries_2016_run.sps                              */
/*   RELEASE VERSION:    20190904 (September 4, 2019)                              */
/*                                                                                 */
/*                                                                                 */
/*   This file (that you are reading) may be opened and run in SPSS with the       */
/*   modification of adding paths.                              
/*                                                                                 */
/*   NOTE: By default, the assignment of missing values are commented out in       */
/*   the program below, but can be restored by removing the asterisk (*) at the    */
/*   start of the relevant line.                                                   */
/*   commented out by default.                                                     */

file handle rawdata  /name="anes_timeseries_2016_rawdata.txt" LRECL=6574.
file handle readdata /name="anes_timeseries_2016_columns.sps".
file handle varlab   /name="anes_timeseries_2016_varlabels.sps".
file handle codelab  /name="anes_timeseries_2016_codelabelsassign.sps".
*file handle missval  /name="anes_timeseries_2016_missingdata.sps".

include file=readdata.
include file=varlab.
include file=codelab. 
*include file=missval.

save outfile="anes_timeseries_2016.sav".



