#! /bin/bash

echo "\n*************** Building the Image 1 ***************\n"

docker build -t shivamtiwari38/csom/image_1 ./enhance_docker_sec/target_1/

echo "\n*************** Building the Image 2 ***************\n"

docker build -t shivamtiwari38/csom/image_2 ./enhance_docker_sec/target_2/

echo "\n*************** Pushing the Image 1 to the repo ***************\n"

docker push shivamtiwari38/csom/image_1

echo "\n*************** Pushing the Image 2 to the repo ***************\n"

docker push shivamtiwari38/csom/image_2

echo "\n*************** Scanning the Images using trivy ***************\n"

python3 ./enhance_docker_sec/app.py

echo "\n*************** Done *********************\n"
