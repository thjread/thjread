#!/bin/sh
cd Reminders/Frontend/reminders
npm run build
find dist -type f -exec zopfli '{}' \;
cd ../../..
docker build -t reminders-nginx .
