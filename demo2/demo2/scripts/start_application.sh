#!/bin/bash

# 배포 디렉토리와 JAR 파일 이름 지정
DEPLOY_DIR="/home/ubuntu/spring-boot"
JAR_NAME="eduCertificate-0.0.1-SNAPSHOT.jar"  # 배포할 JAR 파일 이름으로 변경하세요

cd $DEPLOY_DIR
# Spring Boot 애플리케이션 실행
nohup java -jar build/libs/eduCertificate-0.0.1-SNAPSHOT.jar --spring.profiles.active=stage > /dev/null 2>&1 &