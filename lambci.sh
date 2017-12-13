#!/bin/bash -ex

BUILD_PATH=/tmp/lambci/build/$LAMBCI_REPO/

. ~/init/php 7.1.2
curl -SOL https://phpoole.org/phpoole.phar
php phpoole.phar -v
php phpoole.phar build

bash deploy.sh
