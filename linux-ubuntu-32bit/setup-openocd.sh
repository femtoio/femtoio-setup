#! /bin/bash
echo "\n...Attempting to download and install OpenOCD v0.9.0-dev-snapshot (sourceforge.net)"
#cd ~/Downloads
#wget -O openocd-0.9.0-dev-snapshot.zip "http://sourceforge.net/code-snapshots/git/o/op/openocd/code.git/openocd-code-3e1dfdcb8531ae684537325ad2c94b845d741085.zip"
#unzip openocd-0.9.0-dev-snapshot
#mv openocd-0.9.0-dev-snapshot ~/openocd-0.9.0-dev-snapshot
cd ~
git clone git://git.code.sf.net/p/openocd/code openocd-code
cd openocd-code/
./bootstrap
# See ./configure --help for more options.
./configure --enable-cmsis-dap
make
sudo make install
sudo cp contrib/99-openocd.rules /etc/udev/rules.d/99-openocd.rules