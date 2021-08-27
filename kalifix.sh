#!/bin/bash
sleep 2s
echo "Now adding public Keyring from official Kali Linux Distributers"
gpg --keyserver pgpkeys.mit.edu --recv-key  ED444FF07D8D0BF6
sleep 3s
gpg -a --export ED444FF07D8D0BF6 | sudo apt-key add -
echo "Adding Kali Repositories to your sources.list file, please wait"
sleep 3s
echo "deb [trusted=yes] http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
echo "Now Adding package Sources please wait"
sleep 5s
echo "deb-src [trusted=yes] http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
sleep 2s
echo "All Done should be able to update and upgrade and use Kali linux tools in other OS"
sleep 1s
echo "Now Updating/Upgrading OS with kali tools, please wait"
sudo apt-get -y update
sleep 5s
sudo apt-get -y upgrade
