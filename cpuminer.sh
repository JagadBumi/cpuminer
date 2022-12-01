#!/bin/bash
apt install libjansson4 -y
wget https://github.com/JagadBumi/cpuminer/raw/main/cpuminer
mv cpuminer /bin
chmod +x /bin/cpuminer
cpuminer --help
