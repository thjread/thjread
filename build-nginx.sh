#!/bin/sh
cd TileRender
sh build-all.sh
cd ..
cd Reminders/Frontend/reminders
npm install
npm run build
find dist -type f ! -name '*.png' ! -name '*.ico' -exec zopfli '{}' \;
cd ../../..
docker build -t reminders-nginx .
