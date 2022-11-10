# 根据sdf8057源码编译固件[#ipq6000](https://github.com/sdf8057/ipq6000 "悬停显示") 


`该项目固件为精简，如需更多插件请看下方教程，装很多固件前请考虑你设备的实际容量，不要可劲往里塞。（不提供技术支持）`

# 固件特色 默认地址192.168.1.1 密码 password 每月更新一次

## 支持设备zn-m2，和目ax18，360v6 超频至1800mhz
1. ssrp
2. passwall
3. 定时重启
4. DDNS
5. kms
6. upnp
7. 网易云解锁
8. ipv6


# 增加插件教程，fork项目（需要你有liux环境vps也行首选ubuntu或者debian）

## 拉取源码配置config！！！需科学上网环境！！！！
```
#需要wifi
curl https://raw.githubusercontent.com/ppayjjk/ipq6000/main/wifi/wifi.sh | bash
```
```
#不需要WiFi
curl https://raw.githubusercontent.com/ppayjjk/ipq6000/main/pro/pro.sh | bash
```
## 插件在luci-applications里，主题在luci-Themes里，看到想要的按Y键打上*号“save”保存esc退出即可
```
#导出为diffconfig
./scripts/diffconfig.sh > diffconfig
```
### 找到diffcofig,复制里面的内容替换项目根目录的config文件，不需要无线替换pro.config需要无线替换prowifi.config。!!!替换内容不要动名字

### 点击打开项目.github/workflows文件夹找到你想要编译的运行文件需要wifi ipq6000.yml不需要wifi ipq6000-pro-wifi.yml点击打开。
![1](https://user-images.githubusercontent.com/92498741/197912728-4a4b32b2-43b0-4bde-8970-abc5b840bb9d.png)点亮你fork项目右上角的星星触发编译。编译结束后固件在Actions-点击运行任务-下方OpenWrt下载即可。


# 结束
