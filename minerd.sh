#!/bin/bash
cd ~
git clone https://github.com/crypto-jeronimo/cpuminer-yescrypt-r16 minerd
cd minerd
chmod +x *
apt-get install build-essential libcurl4-openssl-dev autotools-dev automake -y
./autogen.sh
./nomacro.pl
./configure CFLAGS="-O3"
make
mv minerd /bin/
apt-get autoremove build-essential libcurl4-openssl-dev autotools-dev automake -y | echo "Please wait, removing cache.."
cd ~
rm -rf minerd
minerd --help
