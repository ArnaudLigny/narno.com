#!/bin/bash -e

. ~/init/php 7.3.3

printf "Downloading Cecil"
curl -sSOL https://cecil.app/cecil.pharr
php cecil.phar --version
if [ $? != 0 ]; then printf "Can't run cecil.phar"; exit; fi

printf "\nStarted themes installation"
composer install
printf "Finished themes installation"

printf "\nStarted Cecil build"
if [ -n "$1" ]; then
# build with drafts?
  if [ "$1" = "drafts" ]; then
    php cecil.phar build --verbose --drafts
  fi
else
  php cecil.phar build --quiet
fi
# build success? can deploy?
if [ $? = 0 ]; then printf "Finished Cecil build"; bash scripts/deploy.sh $1; else return 1; fi
