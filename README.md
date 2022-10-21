# 根据lean源码编译固件[#大雕ipq6000](https://github.com/coolsnowwolf/openwrt-gl-ax1800 "悬停显示") 
# Packages包来自[#NueXini_Packages](https://github.com/NueXini/NueXini_Packages "悬停显示")

`该项目固件为精简，如需更多插件请看下方教程，装很多固件前请考虑你设备的实际容量，不要可劲往里塞。（不提供技术支持）`

# 固件特色 默认地址192.168.1.1 密码 password 
# 支持设备zn-m2，和目ax18，360v6 超频至1608mhz，为什么不到1800？没有！我只有和目AX18，体质只能到1608。
1. ssrp
2. passwall
3. 定时重启
4. DDNS
5. kms
6. upnp
7. 网易云解锁
8. ipv6


# 增加插件教程，fork项目（需要你有liux环境vps也行首选ubuntu或者debian）

## 克隆源码并添加package包
```
git clone https://github.com/coolsnowwolf/openwrt-gl-ax1800.git ipq6000
cd ipq6000
sed -i '$a src-git NueXini_Packages https://github.com/NueXini/NueXini_Packages.git' feeds.conf.default
./scripts/feeds update -a && ./scripts/feeds install -a
```
```
#需要wifi
wget https://raw.githubusercontent.com/ppayjjk/ipq6000/main/wifi/.config
```
```
#不需要WiFi
wget https://raw.githubusercontent.com/ppayjjk/ipq6000/main/pro/.config
```
```
make menuconfig
```
## 插件在luci-applications里，主题在luci-Themes里，看到想要的按Y键打上*号“save”保存esc退出即可
```
#导出为diffconfig
./scripts/diffconfig.sh > diffconfig
```
## 找到diffcofig,复制里面的内容替换项目根目录的config文件，不需要无线替换pro.config需要无线替换prowifi.config。
# 点亮你fork项目右上角的星星触发编译。编译结束后固件在Actions-点击运行任务-下方OpenWrt下载即可。
# 结束
