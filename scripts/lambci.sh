#!/bin/bash -e

. ~/init/php 7.1.2

echo "Downloading Cecil"
curl -SOL https://cecil.app/cecil.phar
php cecil.phar -v

echo "Started themes installation"
composer install
echo "Finished themes installation"

echo "Started Cecil build"
php cecil.phar build -q
echo "Finished Cecil build"

bash scripts/deploy.sh
