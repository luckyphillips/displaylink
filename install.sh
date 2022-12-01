# make sure you have first gone to https://www.synaptics.com/products/displaylink-graphics/downloads/ubuntu-5.6.1?filetype=exe and download the latest ubuntu driver

sudo apt install dkms
apt install libevdi0-dev

cd

git clone https://github.com/DisplayLink/evdi
sudo mv evdi /usr/src/evdi
cd /usr/src
sudo ln -s evdi/module evdi-1.12.0
cd evdi-1.12.0
sudo make
# ignore errors 
sudo dkms add .
sudo make install
sudo dkms add .
sudo make 
sudo make install
chmod +x displaylink-driver-5.6.1-59.184.run

# make sure you have first gone to https://www.synaptics.com/products/displaylink-graphics/downloads/ubuntu-5.6.1?filetype=exe and download the latest ubuntu driver

cd

chmod +x displaylink-driver-5.6.1-59.184.run
sudo ./displaylink-driver-5.6.1-59.184.run
