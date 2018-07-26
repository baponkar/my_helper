#! /bin/bash

var=$(zenity \
     --list --radiolist \
     --width=800 --height=600 \
     --title="MY Helper" \
     --text="Chose a work to perform" \
     --column="Pick any one" --column="  Binary Path" --column="  Job Name" \
     TRUE "/home/uniteworld/Desktop/my_helper/update.sh" "Update & Upgrade" \
     FALSE "/home/$USER/Desktop/my_helper/SendMail" "SendMail" \
     FALSE "/home/$USER/Desktop/my_helper/search_process.sh" "Search_process" \
     FALSE "/usr/bin/gnome-terminal" "Terminal" \
     FALSE "/home/$USER/Desktop/my_helper/cd_Downloads.sh" "Downloads" \
     FALSE "/home/$USER/Desktop/my_helper/open_proxybuzz.sh" "Search best proxybay site" \
     FALSE "/home/$USER/Desktop/my_helper/youtube.sh" "Youtube" \
     FALSE "/home/$USER/Desktop/my_helper/googlemaps.sh" "Google Maps" \
     FALSE "/home/$USER?Desktop/my_helper/poweroff.sh "Poweroff" )
exec $var
