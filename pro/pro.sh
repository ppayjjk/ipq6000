#/bin/bash

apt update
apt install make -y
git clone -b main --single-branch https://github.com/sdf8057/ipq6000.git openwrt
cd openwrt
./scripts/feeds update -a && ./scripts/feeds install -a
wget https://raw.githubusercontent.com/ppayjjk/ipq6000/main/pro/.config
make menuconfig
