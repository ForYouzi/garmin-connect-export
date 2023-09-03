#!/bin/bash
#

Script=$1
UserName=$2
Password=$3
Count=$4
GarminFolder=~/Garmin/$UserName

if [ -d $GarminFolder ]; then
    rm -R $GarminFolder
fi

python3 $Script -c $Count -d $GarminFolder --format tcx -u --username $UserName --password $Password
