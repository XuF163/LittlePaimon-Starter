#!/bin/bash

echo "如果遇到代码不跑的情况就按回车   
yes or no 的选项直接y  
卡死就重新执行脚本
2023--6更新"

# 获取 root 权限
if [[ $EUID -ne 0 ]]; then
    echo "需要以 root 权限运行脚本，请输入 root 密码："
    sudo -v
    if [[ $? -ne 0 ]]; then
        echo "认证失败，请检查密码是否正确。"
        exit 1
    fi
fi


sudo apt update -y && sudo apt upgrade -y


apt install pipx
pipx ensurepath# 设置 pipx 环境变量
source ~/.bashrc
source ~/.profile






clear

pipx install nb-cli


nb self install nb-cli-plugin-littlepaimon


clear

echo "天理降临ing，按回车继续战斗"
read -r

echo 'u="nb paimon create"' >> ~/.bashrc
echo 'i="cd LittlePaimon"' >> ~/.bashrc
echo 'P="nb paimon run"' >> ~/.bashrc
echo 'p="cd LittlePaimon&&nb paimon run"' >> ~/.bashrc

echo "输入nudePaimon加载项目资源，findPaimon进入派蒙"
# 重启
echo "即将重启系统，请坐和放宽..."
sleep 3
sudo reboot


