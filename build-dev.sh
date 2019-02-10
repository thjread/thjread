#!/bin/sh
cd Reminders/Frontend/reminders
npm install
npm run build
find dist -type f -exec zopfli '{}' \;
cd ../../..
docker build -f dev/Dockerfile -t nginx-dev .
