sudo git clone https://github.com/drogonframework/drogon
cd drogon
sudo git submodule update --init
mkdir build
cd build
sudo cmake ..
sudo make && sudo make install