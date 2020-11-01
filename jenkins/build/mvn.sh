#!/bin/bash

echo "****************************"
echo "********Building jar********"
echo "****************************"
WORKSPACE=$JENKINS_HOME/workspace/$JOB_NAME
echo $WORKSPACE
docker run --rm -v $WORKSPACE/java-app:/app -v /root/jenkins/data/.m2/:/root/.m2 -w /app maven:3-alpine "$@"



