#!/bin/bash

node-inspector --no-preload --web-port=8080 --save-live-edit=true --hidden=node_modules &

cd /srv
npm install

forever -a --uid="playground" -c "node --debug=4001" /src/server.js &

while true; do sleep 10000; done
