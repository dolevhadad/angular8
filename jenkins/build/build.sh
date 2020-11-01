#!/bin/bash

#copy jar file

cp java-app/target/*.jar jenkins/build/

echo "###build docker images###"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache


