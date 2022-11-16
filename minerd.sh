#!/bin/bash
cd ~
git clone https://github.com/crypto-jeronimo/cpuminer-yescrypt-r16 minerd
clear
cd minerd
chmod +x *
sudo apt-get install build-essential libcurl4-openssl-dev autotools-dev automake
clear
./autogen.sh
clear
./nomacro.pl
clear
./configure CFLAGS="-O3"
clear
make
clear
mv minerd /bin/
cd ~
rm -rf minerd
rm -rf .cache
echo "Type command:\nminerd\nminerd --help\nminerd -o startum+tcp://host:port -u walletAddress -p x\nVisit https://zpool.ca for mining.."
clear
