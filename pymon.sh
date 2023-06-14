#!/bin/bash

echo "如果遇到代码不跑的情况就按回车 yes or no 的选项直接y  2023-6更新"

# 获取 root 权限
if [[ $EUID -ne 0 ]]; then
    echo "需要以 root 权限运行脚本，请输入 root 密码："
    sudo -v
    if [[ $? -ne 0 ]]; then
        echo "认证失败，请检查密码是否正确。"
        exit 1
    fi
fi

# 更新软件包并升级系统
sudo apt update -y && sudo apt upgrade -y

# 安装 pipx
sudo apt install -y python3-pip
pip install --user pipx

# 设置 pipx 环境变量
pipx ensurepath
source ~/.bashrc
source ~/.profile

# 安装 nb-cli
pipx install nb-cli

# 安装 nonebot 脚手架
nb self install nb-cli-plugin-littlepaimon

# 清屏
clear

# 提示
echo "准备敲回车键继续"
read -r

# 创建项目并设置相关配置
alias[nude Paimon='nb paimon create'] 
alias[find Paimon='cd Littlepaimon']
alias[nude app='nb paimon run']
echo "输入nude Paimon加载项目资源，findPaimon进入派蒙"

