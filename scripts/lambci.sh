#!/bin/bash -e

. ~/init/php 7.3.3

echo "Downloading Cecil"
curl -sSOL https://cecil.app/cecil.pharr
php cecil.phar --version
if [ $? != 0 ]; exit 1; fi

echo -e "\nStarted themes installation"
composer install

echo -e "\nStarted Cecil build"
if [ -n "$1" ]; then
# build with drafts?
  if [ "$1" = "drafts" ]; then
    php cecil.phar build --verbose --drafts
  fi
else
  php cecil.phar build --quiet
fi
# build success? can deploy?
if [ $? = 0 ]; then echo "Finished Cecil build"; bash scripts/deploy.sh $1; else return 1; fi
