#!/bin/bash
#

UserName=$1
Password=$2
GarminFolder=~/Garmin/$UserName

if [ -d $GarminFolder ]; then
    rm -R $GarminFolder
fi

python3 gcexport.py -c 20 -d $GarminFolder --format tcx -u --username $UserName --password $Password
