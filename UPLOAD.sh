#!/bin/bash

# 编码处理
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# 颜色
RedColor='\033[31m'
GreenColor='\033[32m'
YellowColor='\033[33m'
DefaultColor='\033[0m'

# 变量
remote_url_path=""
confirmed="n"

getRemoteUrlPath() {
    read -p "请输入远程地址: " remote_url_path
    # 字符串长度为0
    if test -z "$remote_url_path"
    then
        getRemoteUrlPath
    fi
}

getInfomation() {
    getRemoteUrlPath

    echo -e "\n${DefaultColor}================================================"
    echo -e " Remote url : ${RedColor}${remote_url_path}${DefaultColor}"
    echo -e "================================================\n"
}

echo -e "\n"

while [ "$confirmed" != "y" -a "$confirmed" != "Y" ] 
do
    if [ "$confirmed" == "n" -o "$confirmed" == "N" ]
    then 
        getInfomation
    fi
    read -p "确定? (y/n):" confirmed
done

git init
git remote add origin ${remote_url_path}

git add .
git commit -m "up time : $(date +%y%m%d_%H%M)"
git push origin master -f 
# git push -u origin master
# git push

# git tag $version
# git push --tags

exit 0



