#!/bin/bash -e

. ~/init/php 7.1.27

echo "Enabling PHP Intl extension"
php -d extension=intl

echo "Downloading Cecil"
curl -SOL https://cecil.app/cecil.phar
php cecil.phar --version

echo "Started themes installation"
composer install
echo "Finished themes installation"

echo "Started Cecil build"
php cecil.phar build --verbose

# build success? can deploy?
if [ $? = 0 ]; then echo "Finished Cecil build"; bash scripts/deploy.sh; else return 1; fi
