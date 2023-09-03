#!/bin/bash
#
echo "copy libs & backup.sh to /usr/local/bin"
chmod +x ./backup.sh
sudo cp ./backup.sh /usr/local/bin/
sudo cp ./gcexport.py /usr/local/bin/
