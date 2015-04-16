#! /usr/bin/sh
"\n\n...Changing into Downloads folder. Here we go...\n"
cd ~/Downloads

echo "\n...Dependencies! Making sure the build-essential, and unzip package(s) are installed\n"
sudo apt-get update
sudo apt-get install -y build-essential unzip gzip

# Uncomment these lines for 64-bit machines
#echo "\n...Attempting to install (system wide) ia32-libs for 64-bit machines\n"
#sudo apt-get install ia32-libs

echo "\n...Bare metal gcc toolchain! Attempting to download toolchain: gcc-arm-embedded 4.9-2015-q1-update release from the 4.9 series (launchpad.net)\n"
wget -o gcc-arm-none-eabi-4_9-2015q1-20150306-linux.tar.bz2 "https://launchpad.net/gcc-arm-embedded/4.9/4.9-2015-q1-update/+download/gcc-arm-none-eabi-4_9-2015q1-20150306-linux.tar.bz2"

echo "\n...Attempting to unpack the gcc-arm-embedded archive to ~/gcc-arm-toolchains/gcc-arm-none-eabi-4_9-2015q1-20150306-linux\n"
cd ~/
mkdir -p gcc-arm-toolchains
cd gcc-arm-toolchains
tar xjf ~/Downloads/gcc-arm-none-eabi-4_9-2015q1-20150306-linux.tar.bz2

echo "\n...Debugging tools! Attempting to download and install OpenOCD v0.9.0-dev-snapshot"
cd ~/Downloads
wget -o openocd-0.9.0-dev-snapshot.zip "http://sourceforge.net/code-snapshots/git/o/op/openocd/code.git/openocd-code-3e1dfdcb8531ae684537325ad2c94b845d741085.zip"
unzip openocd-0.9.0-dev-snapshot
mv openocd-0.9.0-dev-snapshot ~/openocd-0.9.0-dev-snapshot

echo "\n...Firmware tools! Attempting to download FemtoIO fork of BOSSA"
cd ~/Downloads
wget -o femtoio-bossa.zip https://github.com/femtoio/BOSSA/archive/master.zip
unzip femtoio-bossa.zip
mv femtoio-bossa ~/bossa


echo "\n...Development IDE! Attempting to download the Eclipse IDE, and unpack it\n"
cd ~/Downloads
wget -o eclipse-cpp-luna-SR1a-linux-gtk.tar.gz "http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/luna/SR1a/eclipse-cpp-luna-SR1a-linux-gtk.tar.gz&mirror_id=1065"
tar zxvf eclipse-cpp-luna-SR1a-linux-gtk.tar.gz
mv eclipse ~/eclipse

# echo "\n\n\n\n********************************************\n"
# echo "\tPlease remember to edit the C/C++ Build > Environment > PATH setting in Eclipse to include:\n"
# echo "\t/usr/local/gcc-arm-none-eabi-4_9-2015q1-20150306-linux/bin\n\n"
# echo "\t(See http://gnuarmeclipse.livius.net/blog/toolchain-path/ for more info)"
# echo "\n********************************************\n\n\n\n"

echo "\n...Attempting to install the GNU ARM Eclipse Plug-ins"
cd ~/eclipse
./eclipse -nosplash \
 -application org.eclipse.equinox.p2.director \
 -repository http://gnuarmeclipse.sourceforge.net/updates \
 -destination ./ \
 -installIU ilg.gnuarmeclipse.managedbuild.cross.feature.group \
 -installIU ilg.gnuarmeclipse.doc.user.feature.group \
 -installIU ilg.gnuarmeclipse.templates.freescale.feature.group \
 -installIU ilg.gnuarmeclipse.templates.cortexm.feature.group \
 -installIU ilg.gnuarmeclipse.debug.gdbjtag.jlink.feature.group \
 -installIU ilg.gnuarmeclipse.debug.gdbjtag.openocd.feature.group \
 -installIU ilg.gnuarmeclipse.packs.feature.group \
 -installIU ilg.gnuarmeclipse.templates.stm.feature.group

 