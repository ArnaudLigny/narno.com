#!/bin/bash -e

. ~/init/php 7.3.3

echo "Downloading Cecil"
curl -sSOL https://cecil.app/cecil.phar
php cecil.phar --version

echo "Started themes installation"
composer install
echo "Finished themes installation"

echo "Started Cecil build (with drafts)"
export CECIL_TITLE="Narno.com (drafts)"
php cecil.phar build --verbose --drafts --baseurl=https://drafts.narno.com/

# build success? can deploy?
if [ $? = 0 ]; then echo "Finished Cecil build"; bash scripts/deploy-drafts.sh; else return 1; fi
