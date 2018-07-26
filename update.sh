#!/bin/bash
  TEXT_RESET='\e[0m'
  TEXT_YELLOW='\e[0;33m'
  TEXT_RED_B='\e[1;31m'
  TEXT_GREEN='\e[0;32m'
echo -e $TEXT_GREEN
echo -e "Do You want to start upgrade and update [Y/n]"
echo -e $TEXT_RESET

read x
echo "$x"
if [ "$x" == "y" ] || [ "$x" == "Y" ] ;
  then

  TEXT_RESET='\e[0m'
  TEXT_YELLOW='\e[0;33m'
  TEXT_RED_B='\e[1;31m'
  TEXT_GREEN= '\e[0;32m'

  sudo apt-fast update
  echo -e $TEXT_YELLOW
  echo 'APT update finished...'
  echo -e $TEXT_RESET
  sudo apt-fast dist-upgrade -y
  echo -e $TEXT_YELLOW
  echo 'APT distributive upgrade finished...'
  echo -e $TEXT_RESET
  sudo apt-fast upgrade -y
  echo -e $TEXT_YELLOW
  echo 'APT upgrade finished...'
  echo -e $TEXT_RESET
  sudo apt-fast autoremove
  echo -e $TEXT_YELLOW
  echo 'APT auto remove finished...'
  echo -e $TEXT_RESET
  echo -e $TEXT_YELLOW
  echo update completed
  echo -e $TEXT_RESET
xrefresh
   if [ -f /var/run/reboot-required ]; then
    echo -e $TEXT_RED_B
    echo 'Reboot required!'
    echo -e $TEXT_RESET
   fi
 elif [ "$x" == "n" ] || [ "$x" == "N" ];
  then
xrefresh
  echo -e $TEXT_YELLOW
  echo "Good Bye!"
  echo -e $TEXT_RESET
  exit
 else
  echo "You choose wrong option!!!!!!!!"
 fi
