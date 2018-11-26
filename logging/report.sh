#!/bin/bash
#SYS 7
#USR 5
#REAL 3
if [ "$#" -ne 2 ]; then
  echo "Error: Check parameters..."
  echo "Executing this command using: ./report [MONTH_NUMBER] [YEAR_NUMBER]"
  exit 1
fi

USER=`whoami`
ROOT_FOLDER=$HOME/.logs

DATE=`date -d "$2$101" +"%b-%Y"`
FILE=$DATE.log
REPORT_FOLDER="$ROOT_FOLDER/${USER}"
REPORT_FOUND=`find $REPORT_FOLDER -name $FILE`

if [ -n "$REPORT_FOUND" ];
then
  REPORT=`cat $REPORT_FOUND`
  echo `awk -vRS="-" '{TIME_SYS+=int($7); TIME_USR+=int($5); TIME_TOTAL+=int($3)} END  {print "Tempo total de uso: " TIME_TOTAL, "Tempo total sys: " TIME_SYS, "Tempo total user: " TIME_USR}' $REPORT_FOUND`
else
  echo "No report available for date: $DATE"
fi

