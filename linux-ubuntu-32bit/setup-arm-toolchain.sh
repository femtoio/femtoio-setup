#! /bin/bash
echo "\n...Bare metal gcc toolchain! Attempting to download toolchain: gcc-arm-embedded 4.9-2015-q1-update release from the 4.9 series (launchpad.net)\n"
wget -O gcc-arm-none-eabi-4_9-2015q1-20150306-linux.tar.bz2 "https://launchpad.net/gcc-arm-embedded/4.9/4.9-2015-q1-update/+download/gcc-arm-none-eabi-4_9-2015q1-20150306-linux.tar.bz2"

echo "\n...Attempting to unpack the gcc-arm-embedded archive to ~/gcc-arm-toolchains/gcc-arm-none-eabi-4_9-2015q1-20150306-linux\n"
cd ~/
mkdir -p gcc-arm-toolchains
cd gcc-arm-toolchains
tar -vxjf ~/Downloads/gcc-arm-none-eabi-4_9-2015q1-20150306-linux.tar.bz2
