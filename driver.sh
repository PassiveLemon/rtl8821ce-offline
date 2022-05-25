echo "Repairing packages..."
sudo apt --fix-broken install
echo "Packages repaired"
echo "Installing RTL8821CE driver"
sudo apt install ./bc.deb
sudo apt install ./dkms.deb
sudo apt install ./rtl.deb
echo "Driver installed"
