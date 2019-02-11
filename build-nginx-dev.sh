#!/bin/sh
cd Reminders/Frontend/reminders
npm install
npm run stage
find dist -type f -exec zopfli '{}' \;
cd ../../..
docker build -f DevDockerfile -t nginx-dev .
