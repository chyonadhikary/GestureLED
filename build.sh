#!/usr/bin/env bash
set -euo pipefail
rm -rf dist
mkdir -p dist
cp index.html styles.css app.js manus-routes.json favicon.svg dist/
cp -r public/* dist/
