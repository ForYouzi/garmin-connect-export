#!/bin/bash
#

echo "copy backup.sh to /usr/local/bin"
chmod +x ./backup.sh
sudo cp ./backup.sh /usr/local/bin/

if [ -d ~/.oh-my-zsh/custom/garmin.zsh ]; then
    rm ~/.oh-my-zsh/custom/garmin.zsh
fi

echo "export Script=$(pwd)/gcexport.py" >> ~/.oh-my-zsh/custom/garmin.zsh
