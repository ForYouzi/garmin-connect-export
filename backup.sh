#!/bin/bash
#

if [ ! -n "$3" ]; then
    Count=20
else
    Count=$3
fi

UserName=$1
Password=$2
GarminFolder=~/Garmin/$UserName

if [ -d $GarminFolder ]; then
    rm -R $GarminFolder
fi

echo "using script:$Script to backup garmin activities with count:$Count"
python3 $Script -c $Count -d $GarminFolder --format tcx -u --username $UserName --password $Password
