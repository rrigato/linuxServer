#installing the ssh server
sudo apt-get install openssh-server

#Backs up the default configuration settings for the ssh server
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.factory-defaults

#makes the ssh server backup a read only file
sudo chmod a-w /etc/ssh/sshd_config.factory-defaults

#check to make sure your ssh server is up and running
#this should return a something like  6284 ?        00:00:00 sshd
ps -A | grep sshd

#lists the ports that the ssh server is listening on
sudo ss -lnp | grep sshd
