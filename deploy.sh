#!/bin/sh

set -e

# 停止容器，删除容器、镜像，避免过多占用磁盘
docker-compose down --rmi all

# 重新构建启动容器
docker-compose up --build --force-recreate -d