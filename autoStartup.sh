

The next step is to create a shell file with the following information

#Sets the wakealarm for X hours after the computer shutsdown
sh -c "echo 0 > /sys/class/rtc/rtc0/wakealarm" 
sh -c "echo `date '+%s' -d '+ 5 minutes'` > /sys/class/rtc/rtc0/wakealarm" 

#shuts the computer down now
shutdown -h now
