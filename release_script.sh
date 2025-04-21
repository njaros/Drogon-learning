sudo git clone https://github.com/drogonframework/drogon
cd drogon
sudo git submodule update --init
mkdir build
cd build
sudo cmake -DCMAKE_BUILD_TYPE=Release ..
sudo make && sudo make install