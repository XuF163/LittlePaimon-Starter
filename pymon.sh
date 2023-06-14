#!/bin/bash
apt update && apt upgrade  # 更新系统
apt install pipx  # 安装pipx
pipx ensurepath  # 把pipx添加到环境变量
gnome-terminal -e --window
pipx install nb-cli  # 安装nonebot脚手架
nb self install nb-cli-plugin-littlepaimon  # 安装小派蒙脚手架插件
nb paimon create&&cd LittlePaimon&&nb paimon res&&nb paimon run playwright install chromium --with-deps&&sleep 114514
echo "到此，您的小派蒙Bot安装成功！此后，你只需要在派蒙的目录下使用命令nb paimon run即可启动小派蒙Bot，并根据你选择的go-cqhttp方式，启动并登录机器人账号。"
