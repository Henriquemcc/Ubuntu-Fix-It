#!/bin/bash
sudo service bluetooth stop;
sudo apt update;
sudo apt full-upgrade -y;
sudo apt autoremove -y;
sudo service bluetooth start;