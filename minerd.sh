#!/bin/bash
cd ~
git clone https://github.com/crypto-jeronimo/cpuminer-yescrypt-r16 minerd
clear
cd minerd
chmod +x *
sudo apt-get install build-essential libcurl4-openssl-dev autotools-dev automake -y
clear
./autogen.sh
./nomacro.pl
./configure CFLAGS="-O3"
make
clear
mv minerd /bin/
sudo apt-get autoremove build-essential libcurl4-openssl-dev autotools-dev automake -y | echo "Removing cache.."
cd ~
rm -rf minerd
rm -rf .cache
echo "Type command:"
echo "minerd"
echo "minerd --help"
echo "minerd -o startum+tcp://host:port -u walletAddress -p x"
echo "visit https://zpool.ca for mining.."
sleep 5
clear
