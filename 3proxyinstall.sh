version=0.9.4
apt update && apt install gcc make git -y
wget --no-check-certificate -O 3proxy-${version}.tar.gz https://github.com/z3APA3A/3proxy/archive/${version}.tar.gz
tar xzf 3proxy-${version}.tar.gz
cd 3proxy-${version}
make -f Makefile.Linux
mkdir /etc/3proxy/ /var/log/3proxy/

mv bin/3proxy /etc/3proxy/
wget --no-check-certificate https://github.com/SnoyIatk/3proxy/raw/master/3proxy.cfg -O /etc/3proxy/3proxy.cfg
chmod 600 /etc/3proxy/3proxy.cfg
wget --no-check-certificate https://github.com/SnoyIatk/3proxy/raw/master/.proxyauth -O /etc/3proxy/.proxyauth
chmod 600 /etc/3proxy/.proxyauth

wget --no-check-certificate https://raw.github.com/SnoyIatk/3proxy/master/3proxy -O /etc/init.d/3proxy
chmod  +x /etc/init.d/3proxy
update-rc.d 3proxy defaults
