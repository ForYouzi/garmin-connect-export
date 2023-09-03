#!/bin/bash
#

UserName=$1
Password=$2
Count=$3
GarminFolder=~/Garmin/$UserName

if [ -d $GarminFolder ]; then
    rm -R $GarminFolder
fi

if [ -n $Count ]; then
    Count=20
fi

echo "using script:$Script to backup garmin activities with count:$Count"
python3 $Script -c $Count -d $GarminFolder --format tcx -u --username $UserName --password $Password
