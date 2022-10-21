# 根据lean源码编译固件[#大雕ipq6000](https://github.com/coolsnowwolf/openwrt-gl-ax1800 "悬停显示") 
# Packages包来自[#NueXini_Packages](https://github.com/NueXini/NueXini_Packages "悬停显示")

`该项目固件为精简，如需更多插件请看下方教程，装很多固件前请考虑你设备的实际容量，不要可劲往里塞。（不提供技术支持）`

# 固件特色
1. ssrp
2. passwall
3. 定时重启
4. DDNS
5. kms
6. 网易云解锁
7. ipv6


# 增加插件教程（首先需要你有liux环境vps也行首选ubuntu或者debian）

## 克隆源码并添加package包
‘‘‘git clone https://github.com/coolsnowwolf/openwrt-gl-ax1800.git ipq6000
   cd ipq6000
   sed -i '$a src-git NueXini_Packages https://github.com/NueXini/NueXini_Packages.git' feeds.conf.default
   ’’’
