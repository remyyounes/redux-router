#!/bin/bash -e

echo 'RUNNING TESTS'
npm test

echo "CLEANING UP"
npm run clean

echo "BUILDING"
npm run build

echo "REMOVING HISTORY"
rm -rf node_modules/history

echo "PUBLISHING"
npm publish

echo "REINSTALLING HISTORY"
npm install history
