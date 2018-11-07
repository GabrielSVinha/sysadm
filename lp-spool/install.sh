#!/bin/bash

#if [ "$EUID" -ne 0 ]
#  then echo "Please run as root"
#  exit 1;
#fi


if [ "$#" -ne 2 ]; then
    echo "Error: Check parameters..."
    echo "Executing this command using: ./install [PAGES_LIMIT] [FILES_LIMIT]"
    exit 1
fi

PAG=$1
ARQ=$2

echo "Setting crontab..."
# echo "0 0 1 * * /bin/refresh-quota" | crontab -

echo "Creating folders..."
mkdir -p ./lp-dir/
mkdir -p ./lp-dir/report
mkdir -p ./lp-dir/config

echo "Setting quota limits..."
echo "PAGE_LIMIT=$PAG" > ./lp-dir/config/limits
echo "FILE_LIMIT=$ARQ" >> ./lp-dir/config/limits

echo "Creating configuration file..."
awk -v PAG=$PAG -v ARQ=$ARQ 'BEGIN{FS=":";OFS=":"}{print $1 " " PAG " " ARQ " " 0}' /etc/passwd > ./lp-dir/config/$(date +"%b-%Y").conf

echo "Successfully installed lp"

