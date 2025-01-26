# 此脚本用处是：添加第三方插件
#=======================================================================================================================


# 1-添加 ShadowSocksR Plus+ 插件
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# # 2-添加 OpenClash 插件
# sed -i '$a\src-git openclash https://github.com/vernesong/OpenClash' ./feeds.conf.default

# 3-添加 PassWall 插件
# echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
# echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
mkdir Modem-Support
pushd Modem-Support
git clone --depth=1 https://github.com/Siriling/5G-Modem-Support .
popd

mkdir diy_poweroffdevice
pushd diy_poweroffdevice
git clone --depth=1 https://github.com/sirpdboy/luci-app-poweroffdevice .
popd

mkdir diy_advancedplus
pushd diy_advancedplus
git clone --depth=1 https://github.com/sirpdboy/luci-app-advancedplus .
popd



pushd package
# 5G通信模组拨号工具
mkdir quectel_QMI_WWAN
mkdir fibocom_QMI_WWAN
mkdir quectel_cm_5G
mkdir meig_QMI_WWAN
mkdir meig-cm
mkdir quectel_MHI
# mkdir luci-app-hypermodem
cp -rf ../Modem-Support/quectel_QMI_WWAN/* quectel_QMI_WWAN
cp -rf ../Modem-Support/fibocom_QMI_WWAN/* fibocom_QMI_WWAN
cp -rf ../Modem-Support/quectel_cm_5G/* quectel_cm_5G
cp -rf ../Modem-Support/meig-cm/* meig-cm
cp -rf ../Modem-Support/meig_QMI_WWAN/* meig_QMI_WWAN
cp -rf ../Modem-Support/quectel_MHI/* quectel_MHI
# # cp -rf ../Modem-Support/luci-app-hypermodem/* luci-app-hypermodem


rm -rf ../package/luci-app-vsftpd
# 5G模组短信插件
rm -rf ../package/luci-app-sms-tool
rm -rf ../package/luci-app-pcimodem
mkdir luci-app-sms-tool
mkdir luci-app-modem
mkdir luci-app-pcimodem
cp -rf ../Modem-Support/sms-tool/* sms-tool
cp -rf ../Modem-Support/luci-app-sms-tool/* luci-app-sms-tool
cp -rf ../Modem-Support/luci-app-modem/* luci-app-modem
cp -rf ../Modem-Support/luci-app-pcimodem/* luci-app-pcimodem

mkdir diy_poweroffdevice
cp -rf ../Modem-diy_poweroffdevice/luci-app-poweroffdevice/* luci-app-poweroffdevice

mkdir diy_advancedplus
cp -rf ../diy_advancedplus-Support/luci-app-advancedplus/* luci-app-advancedplus

popd

sed -i '$a src-git qmodem https://github.com/FUjr/modem_feeds.git;main' feeds.conf.default
