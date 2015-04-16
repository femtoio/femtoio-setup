#! /usr/bin/sh
echo "\n...Firmware tools! Attempting to download FemtoIO fork of BOSSA (arduino branch)"
cd ~/Downloads
wget -O femtoio-bossa.zip "https://github.com/femtoio/BOSSA/archive/arduino.zip"
unzip femtoio-bossa.zip
mv BOSSA-arduino ~/bossa
cd ~/bossa
./arduino/make_package.sh