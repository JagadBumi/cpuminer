#!/bin/bash
git clone https://github.com/crypto-jeronimo/cpuminer-yescrypt-r16 minerd
cd minerd
chmod +x *
sudo apt-get install build-essential libcurl4-openssl-dev autotools-dev automake
./autogen.sh
./nomacro.pl
./configure CFLAGS="-O3"
make
