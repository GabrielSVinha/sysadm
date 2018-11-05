#!/bin/bash

#if [ "$EUID" -ne 0 ]
#  then echo "Please run as root"
#  exit 1;
#fi

PAG=$1
ARQ=$2

echo "Creating configuration file"

mkdir -p ./lp-dir/
mkdir -p ./lp-dir/report
mkdir -p ./lp-dir/config

echo "PAGE_LIMIT: $PAG" > ./lp-dir/config/limits.conf
echo "FILE_LIMIT: $ARQ" >> ./lp-dir/config/limits.conf

awk -v PAG=$PAG -v ARQ=$ARQ 'BEGIN{FS=":";OFS=":"}{print $1 " " PAG " " ARQ " " 0}' /etc/passwd > ./lp-dir/config/$(date +"%b-%Y").conf

echo "Successfully installed lp"

