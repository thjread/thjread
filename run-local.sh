#!/bin/sh
docker stop nginx-dev-instance
docker rm nginx-dev-instance
docker run --name nginx-dev-instance -d -p 80:80 nginx-dev
chromium reminders.thjread.com
