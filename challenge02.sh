#!/bin/bash

# script: Ops301 challenge 02
# purpose: Append, date and time
# why: Tracking versions, auditing, sorting, or even preventing accidental overwriting.

# Variables
year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)
date_string="$day-$month-$year"

# loop
for file in /var/log/journal/*.sh; do
    # copy the same file to the same directory with the date
    cp "$file" "$file.$date_string"

    # Append the date
    echo "$date_string" >> "$file.$date_string"
done