#!/bin/bash

## 编译镜像
docker build -t duckapi .

## 启动镜像
docker run -d -p 8888:8888 --name tillduck --restart=always duckapi
