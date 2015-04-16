#! /bin/bash
"\n\n...Changing into Downloads folder. Here we go...\n"
cd ~/Downloads

echo "\n...Dependencies! Making sure the build-essential, and unzip package(s) are installed\n"
sudo apt-get update
sudo apt-get install -y build-essential unzip gzip libtool pkg-config autoconf automake texinfo libusb-1.0 libhidapi-dev

# Uncomment these lines for 64-bit machines
#echo "\n...Attempting to install (system wide) ia32-libs for 64-bit machines\n"
#sudo apt-get install -y ia32-libs