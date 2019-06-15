#!/bin/bash -e

. ~/init/php 7.1.27

echo "Downloading Cecil"
curl -SOL https://cecil.app/cecil.phar
php cecil.phar --version

echo "Started themes installation"
composer install
echo "Finished themes installation"

echo "Started Cecil build (with drafts)"
export CECIL_SITE_TITLE="Narno.com (drafts)"
php cecil.phar build --verbose --drafts --baseurl=https://drafts.narno.com/

echo "Write CNAME"
echo "drafts.narno.com" >> _site/CNAME

# build success? can deploy?
if [ $? = 0 ]; then echo "Finished Cecil build"; bash scripts/deploy-drafts.sh; else return 1; fi
