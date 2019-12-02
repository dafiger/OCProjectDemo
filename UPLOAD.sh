#!/bin/bash

# 编码处理
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# 颜色
RedColor='\033[31m'
GreenColor='\033[32m'
YellowColor='\033[33m'
DefaultColor='\033[0m'

# 远程仓库地址
RemoteUrlPath=''
# 确认状态
ConfirmStatus='N'

InputRemoteUrlPath() {
    read -p "请输入远程仓库地址: " RemoteUrlPath
    # 字符串长度为0
    if test -z "$RemoteUrlPath"
    then
        InputRemoteUrlPath
    fi
}

# 检验输入内容
CheckInfomation() {
    InputRemoteUrlPath

    echo -e "\n${DefaultColor}================================================"
    echo -e "  远程仓库地址：${RedColor}${RemoteUrlPath}${DefaultColor}"
    echo -e "================================================\n"
}

# 循环检验
while [ ${ConfirmStatus} != "y" -a ${ConfirmStatus} != "Y" ] 
do
    if [ ${ConfirmStatus} == "n" -o ${ConfirmStatus} == "N" ]
    then 
        CheckInfomation
    fi
    read -p "确定? (y/n):" ConfirmStatus
done

git init
git remote add origin ${RemoteUrlPath}

git add .
git commit -m "提交记录时间 : $(date +%Y%m%d_%H%M%S)"

# git push origin master -f 
git push -u origin master
# git push

# git tag xxx
# git push --tags

exit 0



