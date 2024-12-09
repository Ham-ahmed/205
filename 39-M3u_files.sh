#!/bin/sh

echo "> downloading & installing m3u files  Please Wait ..."
sleep 3

wget --show-progress -qO /etc/enigma2/xklass/playlists.txt "https://raw.githubusercontent.com/Ham-ahmed/205/refs/heads/main/playlists.txt"
download=$?
echo ''
if [ $download -eq 0 ]; then
echo "> installation of m3u files  finished"
sleep 3

sleep 2
echo "> Setup done..., Please wait enigma2 restarting..."
sleep 1
echo "> H-Ahmed"

# Restart Enigma2 service or kill enigma2 based on the system
if [ -f /etc/apt/apt.conf ]; then
    sleep 2
    systemctl restart enigma2
else
echo "" 
echo "" 
echo "**********************************************************
echo "#                   INSTALLED SUCCESSFULLY              #"
echo "*                       ON - Panel                      *"
echo "*                Enigma2 restart is required            *"
echo "*********************************************************"
echo "               UPLOADED BY  >>>>   HAMDY_AHMED           "
sleep 4;
echo '========================================================='
################################################################
echo ">>>>                   RESTARING                     <<<<"
echo "*********************************************************"
wait
killall -9 enigma2
fi
else
sleep 3
fi
    
