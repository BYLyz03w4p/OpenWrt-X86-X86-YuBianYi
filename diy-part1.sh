#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: trainSu
#=================================================

# Add a feed source
#sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default



sed -i '$a src-git kwrtpackages https://github.com/kiddin9/kwrt-packages.git' feeds.conf.default
