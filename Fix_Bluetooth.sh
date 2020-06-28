#!/bin/bash
sudo service bluetooth stop;
sudo apt update;
sudo apt full-upgrade -y;
sudo apt autoremove -y;
sudo apt install --reinstall bluedevil blueman bluetooth bluez bluez-cups bluez-obexd gir1.2-gnomebluetooth-1.0 gnome-bluetooth indicator-bluetooth libbluetooth3 libgnome-bluetooth13 libhidapi-libusb0 libkf5bluezqt-data libkf5bluezqt6 libmm-glib0 modemmanager pulseaudio-module-bluetooth qml-module-org-kde-bluezqt rfkill tlp tlp-rdw -y;
sudo service bluetooth start;
