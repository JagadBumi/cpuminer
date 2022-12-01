# How to install cpuminer on ubuntu

<pre><code>
apt install libjansson4
wget https://github.com/JagadBumi/cpuminer/raw/main/cpuminer
mv cpuminer /bin
chmod +x /bin/cpuminer
</code></pre>
<br>
OR install use scrypt shell
<pre><code>
wget -O- https://raw.githubusercontent.com/JagadBumi/cpuminer/main/cpuminer.sh | bash
</code></pre>
<br>
If error can not open libcrypto.so.1.1
<pre><code>
wget https://github.com/JagadBumi/cpuminer/raw/main/libcrypto.so.1.1
mv libcrypto.so.1.1 /lib/arm-linux-gnueabihf
chmod +x /lib/arm-linux-gnueabihf/libcrypto.so.1.1
</code></pre>

# How to use cpuminer

Visit to https://zpool.ca

<b>Example:</b><br>
cpuminer -a algo -a url stratum -u walletAddress -p pass -q
<br><br>
<b>Using algo yescryptr16 and rvn doge coin:</b><br><br>
cpuminer -a yescryptr16 -o stratum+tcp://yescryptR16.eu.mine.zpool.ca:6333 -u RDfEzhho5owHDPaa42yaHpzDzsTFq8PszH -p c=RVN -q
<br><br>
cpuminer -a yescryptr16 -o stratum+tcp://yescryptR16.eu.mine.zpool.ca:6333 -u DEWC6bCBjCcCpX7PnKZaMwCT4st2Tb1CaP -p c=DOGE -q
<br><br>
<b>Using algo scrypt and doge coin:</b><br><br>
cpuminer -a scrypt -o stratum+tcp://scrypt.eu.mine.zpool.ca:3433 -u DEWC6bCBjCcCpX7PnKZaMwCT4st2Tb1CaP -p c=DOGE -q
