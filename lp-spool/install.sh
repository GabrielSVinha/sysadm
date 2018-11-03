#!/bin/bash

#if [ "$EUID" -ne 0 ]
#  then echo "Please run as root"
#  exit 1;
#fi

PAG=$1
ARQ=$2

echo "Creating configuration file"

mkdir -p ./lp-dir/

awk -v PAG=$PAG -v ARQ=$ARQ 'BEGIN{FS=":";OFS=":"}{print $1 " " PAG " " ARQ " " 0}' /etc/passwd > ./lp-dir/$(date +"%b-%Y").conf

echo "Successfully installed lp"

