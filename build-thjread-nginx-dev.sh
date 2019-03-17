#!/bin/sh
cd TileRender
sh build-all.sh
cd ..
docker build -f ThjreadDevDockerfile -t nginx-dev .
