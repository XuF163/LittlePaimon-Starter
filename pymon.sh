#!/bin/bash

# 更新软件包并升级系统
apt update && apt upgrade -y

# 安装 pipx
apt install -y python3-pip
pip install --user pipx
export PATH="$HOME/.local/bin:$PATH"

# 设置 pipx 环境变量
pipx ensurepath

# 安装 nb-cli
pipx install nb-cli

# 安装 nonebot 脚手架
nb self install nb-cli-plugin-littlepaimon

# 创建项目并设置相关配置
nb paimon create&&cd LittlePaimon&&nb paimon res&&nb paimon run playwright install chromium --with-deps
