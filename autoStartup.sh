#Some computers do not support automatic startup in there BIOS/UEFI boot loader, you need to first check whether the computer
#you are using supports it with the following command

```
sudo sh -c "echo 0 > /sys/class/rtc/rtc0/wakealarm"
sudo sh -c "echo `date '+%s' -d '+ 3 minutes'` > /sys/class/rtc/rtc0/wakealarm"
cat /sys/class/rtc/rtc0/wakealarm
```

#The last command will print the number of seconds since the epoch that you have the wakealarm set to go off on

#To check if the wakealarm is supported view if the alrm_time is 5 minutes from now and the alrm_date is today
```
cat /proc/driver/rtc
```
#If it does then your computer supports automatic wake times
