### linuxServer
Describes some useful scripts for setting up Ubuntu server


###Installing R and shiny server

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
