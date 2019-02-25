#!/bin/sh
cd Reminders/Frontend/reminders
npm install
npm run stage
find dist -type f ! -name '*.png' ! -name '*.ico' -exec zopfli '{}' \;
cd ../../..
docker build -f DevDockerfile -t nginx-dev .
