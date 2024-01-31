#!/bin/bash

# 배포 디렉토리 지정
DEPLOY_DIR="/home/ubuntu/spring-boot"
cd $DEPLOY_DIR

#print gradle version
source /etc/profile.d/gradle.sh
gradle -v

gradle build

# 배포된 Spring Boot JAR 파일에 실행 권한 부여
#sudo chmod +x $DEPLOY_DIR/*.jar

# 필요한 경우 추가 환경 설정
# 예시: 환경 변수 설정 또는 외부 설정 파일 복사 등
# export SOME_ENV_VARIABLE=value