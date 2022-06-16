#!/bin/sh

if [ `whoami` = root ]; then
    echo "Please do not run this script as Sudo"
    exit
fi

echo "Installing dependencies"
sudo dpkg -i dependencies/item*.deb
echo "Dependencies installed"
echo "Repairing packages..."
sudo apt --fix-broken install
echo "Packages repaired"
echo "Installing RTL8821CE driver"
sudo apt install ./bc.deb
sudo apt install ./dkms.deb
sudo apt install ./rtl.deb
echo "Driver installed"
