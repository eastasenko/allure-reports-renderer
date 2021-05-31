FROM openjdk:14-alpine

ARG ALLURE_RELEASE=2.14.0

WORKDIR /opt

RUN apk add curl tar gzip bash

RUN wget https://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/${ALLURE_RELEASE}/allure-commandline-${ALLURE_RELEASE}.zip \
    && unzip allure-commandline-${ALLURE_RELEASE}.zip
    
ENV PATH=$PATH:/opt/allure-${ALLURE_RELEASE}/bin

WORKDIR /var/allure