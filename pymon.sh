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

sudo apt update -y && sudo apt upgrade -y &   # 在后台执行更新命令
APT_PID=$!  # 获取更新命令的进程ID

# 等待更新命令完成
wait $APT_PID

# 安装 pipx
sudo apt install -y python3-pip
pip3 install --user pipx
export PATH="$HOME/.local/bin:$PATH"

# 设置 pipx 环境变量
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

clear

pipx install --force nb-cli
nb self install nb-cli-plugin-littlepaimon

clear

echo "天理降临ing，按回车继续战斗"
read -r input

echo 'u="nb paimon create"' >> ~/.bashrc
echo 'i="cd LittlePaimon"' >> ~/.bashrc
echo 'P="nb paimon run"' >> ~/.bashrc
echo 'p="cd LittlePaimon && nb paimon run"' >> ~/.bashrc

# 重启
echo "即将重启系统，请坐和放宽..."
sleep 3
sudo reboot



