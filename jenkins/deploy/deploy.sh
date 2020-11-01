#!/bin/bash

echo mvn-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth
chmod 400 prod

scp -i prod /tmp/.auth jenkins@app:/tmp/.auth
scp -i prod jenkins/deploy/publish.sh jenkins@app:/home/jenkins/maven/
ssh -i prod jenkins@app " chmod +x /home/jenkins/maven/publish.sh && /home/jenkins/maven/publish.sh"
