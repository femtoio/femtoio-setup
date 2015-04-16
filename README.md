# FemtoIO - ARM developer setup
The included setup script(s) should get your computer ready for ARM development.

## Windows
If you're on Windows, you will find Atmel Studio 6.x or higher as the best way to get started with Atmel ARM chips.

## Ubuntu GNU/Linux
See the `linux-ubuntu-32bit` folder. Run the main setup script.
```
./setup.sh
```

This setup script will install Terry Guo's ARM Toolchain (arm-none-eabi-*), a bunch of required apt packages (automake, autoconf, libusb-1.0, etc...), OpenOCD (0.9.0, compiled from source), and the BOSSA command line utility (from our github fork source, arduino branch).

## Mac OSX
...Still a work in progress. I really should buy a Mac already.

