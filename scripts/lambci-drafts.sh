#!/bin/bash -e

. ~/init/php 7.1.27

echo "Downloading Cecil"
curl -SOL https://cecil.app/cecil.phar
php cecil.phar --version

echo "Started themes installation"
composer install
echo "Finished themes installation"

echo "Started Cecil build (with drafts)"
php cecil.phar build --verbose --drafts --baseurl=https://narno.org/drafts.narno.com/

# build success? can deploy?
if [ $? = 0 ]; then echo "Finished Cecil build"; bash scripts/deploy-drafts.sh; else return 1; fi
