#!/bin/bash -e

. ~/init/php 7.1.2

echo "Downloading PHPoole"
curl -SOL https://phpoole.org/phpoole.phar
php phpoole.phar -v

echo "Started PHPoole build"
php phpoole.phar build -q
echo "Finished PHPoole build"

echo "Started website deploy"
bash scripts/deploy.sh
echo "Finished website deploy"
