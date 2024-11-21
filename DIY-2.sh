# 此脚本用处是：定制个性化参数
#=====================================================================

# 1-替换新版 golang
# rm -rf feeds/packages/lang/golang
# git clone https://github.com/kenzok8/golang feeds/packages/lang/golang

# # 2-设置密码为空
# sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate                       # 修改IP
sed -i "s/'OpenWrt'/'magicn'/g" package/base-files/files/bin/config_generate                            # 设置主机名
# 修改插件名字
# sed -i 's/"aMule设置"/"电驴下载"/g' `grep "aMule设置" -rl ./`
# sed -i 's/"网络存储"/"NAS"/g' `grep "网络存储" -rl ./`
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' `grep "Turbo ACC 网络加速" -rl ./`
sed -i 's/"蜂窝网络"/"短信"/g' `grep "蜂窝网络" -rl ./`
sed -i 's/"移动通信模组"/"移动网络"/g' `grep "移动通信模组" -rl ./`
sed -i 's/"CPU 性能优化调节"/"CPU调节"/g' `grep "CPU 性能优化调节" -rl ./`
# sed -i 's/"实时流量监测"/"流量"/g' `grep "实时流量监测" -rl ./`
# sed -i 's/"KMS 服务器"/"KMS激活"/g' `grep "KMS 服务器" -rl ./`
# sed -i 's/"TTYD 终端"/"命令窗"/g' `grep "TTYD 终端" -rl ./`
# sed -i 's/"USB 打印服务器"/"打印服务"/g' `grep "USB 打印服务器" -rl ./`
# sed -i 's/"Web 管理"/"Web"/g' `grep "Web 管理" -rl ./`
# sed -i 's/"管理权"/"改密码"/g' `grep "管理权" -rl ./`
# sed -i 's/"带宽监控"/"监控"/g' `grep "带宽监控" -rl ./`
# sed -i 's/"Argon 主题设置"/"Argon设置"/g' `grep "Argon 主题设置" -rl ./`

# 移动 短信 到 “网络” 子菜单 /cgi-bin/luci/admin/modem/sms
# sed -i 's/services/network/g' feeds/luci/applications/luci-app-sms-tool/root/usr/share/luci/menu.d/luci-app-sms-tool
