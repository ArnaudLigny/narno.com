#!/bin/bash -e

. ~/init/php 7.1

echo "Downloading Cecil"
curl -SOL https://cecil.app/cecil.phar
php cecil.phar --version

echo "Started themes installation"
composer install
echo "Finished themes installation"

echo "Started Cecil build"
php cecil.phar build --verbose
echo "Finished Cecil build"

bash scripts/deploy.sh
