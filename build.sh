#!/usr/bin/env bash

repository="realpage/dredd"
tags=( "4.7.0" "2.2.3" "2.2" "2" )
tagscli=

echo "Building tags for images"
for version in "${tags[@]}"; do
  tagscli="${tagscli} -t ${repository}:${version}"
done

echo "Building base images: ${tagscli}"
docker build ${tagscli} -f Dockerfile .

echo "Pushing images"
for version in "${tags[@]}"; do
  echo "Pushing ${repository}:${version}...";
  docker push ${repository}:${version}
done