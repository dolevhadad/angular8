#!/bin/bash

echo "************************"
echo "*****PUSH DOCEKR********"
echo "************************"


IMAGE="mvn-project"
echo "***LOGIN *****"

echo "pass: " $PASS
docker login -u dolevhadad -p $PASS

echo "**** Taging image****"
docker tag $IMAGE:$BUILD_TAG  dolevhadad/$IMAGE:$BUILD_TAG
echo "****Pushing image****"
docker push dolevhadad/$IMAGE:$BUILD_TAG
