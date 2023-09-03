#!/bin/bash
#

echo "copy backup.sh to /usr/local/bin"
chmod +x ./backup.sh
sudo cp ./backup.sh /usr/local/bin/

echo "export Script=$(pwd)/gcexport.py" >> ~/.oh-my-zsh/custom/garmin.zsh
