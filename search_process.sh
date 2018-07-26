#!/bin/bash
process=$( zenity --entry --title="Search a Process" --text="Type a name to getting process ID" --width=600 --height=200 )
n=$( ps -A | grep $process )
  zenity --question --title="Do You like to kill" --text="process number $n" --width=600 --height=400
  if [ $? = 0 ]
   then
   kill $n
   xrefresh
   zenity --info --title="SUccess!" --text="Successfully killed the process $n" --width=600 --height=400
   exit
  else
   xrefresh
   exit
  fi

