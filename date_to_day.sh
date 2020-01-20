#!/bin/bash
day=""
while [[ ! $day =~ ^[0-9]+$ ]]  ; do
    echo Please enter day in numbers. Example 10
read day
done
month=""
#while [[ ! $MONTH =~ ^[0-9]+$ ]]; do
    echo Please enter month. Example Jun or 06.
read month
year=""
while [[ ! $year =~ ^[0-9]+$ ]]; do
    echo Please enter year. Example 1990.
read year
done
new=$(date -d "$year-$month-$day" '+%A')
echo "On this date the day was a"
echo $new
