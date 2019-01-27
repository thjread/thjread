#!/bin/sh
docker stop nginx-dev-instance
docker rm nginx-dev-instance
docker run --name nginx-dev-instance -d -p 8080:80 nginx-dev
firefox localhost:8080
