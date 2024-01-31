#!/bin/bash

# 기존에 실행 중인 Spring Boot 애플리케이션 프로세스를 찾아서 종료
sudo pkill -f 'java -jar'

# 배포 디렉토리 생성 (이미 존재하는 경우 생성하지 않음)
DEPLOY_DIR="/home/ubuntu/spring-boot"
if [ ! -d "$DEPLOY_DIR" ]; then
  sudo mkdir $DEPLOY_DIR
  sudo chown -R ubuntu:ubuntu $DEPLOY_DIR
fi

# 이전 배포 파일 정리
sudo rm -rf $DEPLOY_DIR/*