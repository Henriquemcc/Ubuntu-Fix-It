#!/bin/bash
sudo apt update;
sudo apt full-upgrade -y;
sudo apt-get install libusb-dev --install-suggests;
sudo service udev restart;