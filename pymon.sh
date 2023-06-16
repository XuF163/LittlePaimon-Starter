#!/bin/bash

echo "修改版-测试中，不保证可用性"

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
apt install pipx -y
pipx ensurepath# 设置 pipx 环境变量
source ~/.bashrc
source ~/.profile
clear
apt-get install python3-pip -y
pip3 install --upgrade pip
clear
pipx install nb-cli
cd
nb self install nb-cli-plugin-littlepaimon
nb paimon create
clear

echo "天理降临ing，按回车继续战斗"
read -r

echo 'u="nb paimon create"' >> ~/.bashrc
echo 'i="cd LittlePaimon"' >> ~/.bashrc
echo 'P="nb paimon run"' >> ~/.bashrc
echo 'p="cd LittlePaimon&&nb paimon run"' >> ~/.bashrc

echo "输入u i o p"




