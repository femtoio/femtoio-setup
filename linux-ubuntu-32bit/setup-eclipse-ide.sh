#! /bin/bash
echo "\n...Development IDE! Attempting to download the Eclipse IDE, and unpack it\n"
sudo apt-get install -y openjdk-7-jdk
cd ~/Downloads
wget -O eclipse-cpp-luna-SR2-linux-gtk.tar.gz "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/luna/SR2/eclipse-cpp-luna-SR2-linux-gtk.tar.gz&r=1"
tar -zxvf eclipse-cpp-luna-SR2-linux-gtk.tar.gz
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