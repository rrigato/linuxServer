### linuxServer
Describes some useful scripts for setting up Ubuntu server


### Installing R and shiny server

The first step is adding the R repository

```
sudo echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list

```
The above will ensure that you download the most recent version of R instead of the one associated with your distribution



The next step is to update and install base R
```
sudo apt-get update
sudo apt-get install r-base r-base-dev
```

If the installation worked correctly, typing R on the command line should take you to the interpreter.
Once in the interpreter, the R.Version() will display the version of R that was installed



##### Install the shiny server

Installs gdebi, gets the compiled binaries from source and runs gdebi on the compiled code
```
  sudo apt-get install gdebi-core
  wget https://download3.rstudio.org/ubuntu-12.04/x86_64/shiny-server-1.5.1.834-amd64.deb
  sudo gdebi shiny-server-1.5.1.834-amd64.deb
```

Note that if you are using a computer that does not have a 64-bit architecture you will have to build the binaries from the source code



### Scheduling automatic shutdown and startup for the server
[Here is the shell script to run for auto start/stop](https://github.com/rrigato/linuxServer/blob/master/autoStartup.sh)

Note that be default cronjobs are logged in the /var/log/syslog directory, so that is the first place to go for debugging purposes


