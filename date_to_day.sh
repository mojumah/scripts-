#!/bin/bash
DAY=""
while [[ ! $DAY =~ ^[0-9]+$ ]]  ; do
    echo Please enter day in numbers. Example 10
read DAY
done
MONTH=""
#while [[ ! $MONTH =~ ^[0-9]+$ ]]; do
    echo Please enter month. Example Jun or 06.
read MONTH
YEAR=""
while [[ ! $YEAR =~ ^[0-9]+$ ]]; do
    echo Please enter year. Example 1990.
read YEAR
done
new="$MONTH $DAY $YEAR"
echo "On this date the day was a "`date -j -v"$MONTH"m -v"$DAY"d -v"$YEAR"y '+%A'`""
