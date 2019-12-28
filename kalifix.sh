#!/bin/bash
sleep 2s
echo "Now adding public Keyring from official Kali Linux Distributers"
apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 7D8D0BF6
echo "Adding Kali Repositories to your sources.list file, please wait"
sleep 3s
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
echo "Now Adding package Sources please wait"
sleep 5s
echo "deb-src http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
sleep 2s
echo "All Done should be able to update and upgrade and use Kali linux tools in other OS"
sleep 1s
echo "Now Updating/Upgrading OS with kali tools, please wait"
sudo apt-get -y update
sleep 5s
sudo apt-get -y upgrade
