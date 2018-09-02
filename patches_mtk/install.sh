#!/bin/sh

echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="build/make/core build/soong frameworks/av frameworks/base hardware/interfaces system/core"

# red + nocolor
RED='\033[0;31m'
NC='\033[0m'


for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
        echo -e "\n${RED}Applying ${NC}$dir ${RED}patches...${NC}\n"
	#git am $rootdirectory/device/xiaomi/cappu/patches_mtk/$dir/*.patch
	git apply -v $rootdirectory/device/xiaomi/cappu/patches_mtk/$dir/*.patch
done

# -----------------------------------
echo -e "Done !\n"
cd $rootdirectory

