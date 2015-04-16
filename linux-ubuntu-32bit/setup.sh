#! /bin/bash
./setup-apt-packages.sh
./setup-arm-toolchain.sh
./setup-openocd.sh
./setup-bossa.sh

# ...automatic Eclipse C++ IDE installation, and GNU ARM Eclipse plugins.
./setup-eclipse-ide.sh

echo "\n\n\t * * * Setup scripts completed. * * *\n\n";