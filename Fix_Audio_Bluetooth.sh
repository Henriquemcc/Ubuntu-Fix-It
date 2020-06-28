#!/bin/bash
sudo service bluetooth stop;
killall pulseaudio;
sudo apt update;
sudo apt full-upgrade -y;
sudo apt autoremove -y;
sudo apt install --reinstall alsa-base alsa-utils alsa-tools-gui alsa-topology-conf alsa-ucm-conf bluedevil gir1.2-cvc-1.0 gir1.2-rb-3.0 gstreamer1.0-libav gstreamer1.0-nice gstreamer1.0-packagekit gstreamer1.0-pulseaudio indicator-sound libao-common libao4 libasound2-plugins libbasicusageenvironment1 libcanberra-pulse libkf5pulseaudioqt2 libpulse-mainloop-glib0 libpulse0 libpulsedsp lightdm linux-image-`uname -r` linux-sound-base pavucontrol pulseaudio pulseaudio-equalizer pulseaudio-module-bluetooth pulseaudio-module-jack pulseaudio-module-lirc pulseaudio-module-raop pulseaudio-module-zeroconf pulseaudio-utils python3-libdiscid speech-dispatcher-audio-plugins ubuntu-desktop ubuntu-sounds blueman bluetooth bluez bluez-cups bluez-obexd gir1.2-gnomebluetooth-1.0 gnome-bluetooth indicator-bluetooth libbluetooth3 libgnome-bluetooth13 libhidapi-libusb0 libkf5bluezqt-data libkf5bluezqt6 libmm-glib0 modemmanager pulseaudio-module-bluetooth qml-module-org-kde-bluezqt rfkill tlp tlp-rdw -y;
killall pulseaudio;
rm -r ~/.pulse*;
ubuntu-support-status;
sudo usermod -aG `cat /etc/group | grep -e '^pulse:' -e '^audio:' -e '^pulse-access:' -e '^pulse-rt:' -e '^video:' | awk -F: '{print $1}' | tr '\n' ',' | sed 's:,$::g'` `whoami`;
sudo pulseaudio -k;
sudo alsa force-reload;
sudo service bluetooth start;
#alsactl r