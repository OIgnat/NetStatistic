# NetStatistic

#cd ~
#nano netstatistic.sh

Insert netstatistics.sh content (!!! please ensure that you have set appropriate network adapter to ‘adapter’ parameter and appropriate key. Also, make sure that ifconfig is located at /usr/sbin/ifconfig . I assume that it should be there (Ubuntu 20.04), but better to re-check by running ‘whereis ifconfig’)

Grant script permissions to be executed:

#chmod +x netstatistic.sh

And set cron job for running this script every 5 minutes:

#crontab -e

and write following content:

/5 * * * * /root/netstatistic.sh

if you have some other script path - set your own above.
