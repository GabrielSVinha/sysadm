#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit 1;
fi

PAG=$1
ARQ=$2

mkdir -p ./lp/

awk -v PAG=$PAG -v ARQ=$ARQ 'BEGIN{FS=":";OFS=":"}{print $1 " " PAG " " ARQ}' /etc/passwd > ./lp/$(date +"%b-%Y").conf

