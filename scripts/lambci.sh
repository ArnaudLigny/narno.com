#!/bin/bash -e

. ~/init/php 7.3.3

echo "Downloading Cecil"
curl -sSOL https://cecil.app/cecil.phar
#php cecil.phar --version
if [ $? != 0 ]; then echo -e "\n"; exit 1; fi

echo
echo "Installating themes"
composer install

echo
echo "Started Cecil build"
if [ -n "$1" ]; then
# build with drafts?
  if [ "$1" = "drafts" ]; then
    php cecil.phar build --verbose --drafts
  fi
else
  php cecil.phar build --quiet
fi
# build success? can deploy?
if [ $? = 0 ]; then echo -e "Finished Cecil build\n"; bash scripts/deploy.sh $1; else return 1; fi
