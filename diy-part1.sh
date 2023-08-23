#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: trainSu
#=================================================

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# Import external feeds
find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
find ./ | grep Makefile | grep mosdns | xargs rm -f
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
cd package/lean
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
# git clone https://github.com/vernesong/OpenClash.git
mkdir package/luci-app-openclash
cd package/luci-app-openclash
git init
git remote add -f origin https://github.com/vernesong/OpenClash.git
git config core.sparsecheckout true
echo "luci-app-openclash" >> .git/info/sparse-checkout
git pull --depth 1 origin master
git branch --set-upstream-to=origin/master master
