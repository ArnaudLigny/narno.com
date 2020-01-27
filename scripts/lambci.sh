#!/bin/bash -e

. ~/init/php 7.3.3

echo "Downloading Cecil..."
curl -sSOL https://cecil.app/cecil.phar
php cecil.phar --version
if [ $? != 0 ]; then echo; exit 1; fi

echo "Installing themes..."
composer install --prefer-dist --no-dev --no-progress --no-interaction

echo
echo "Cecil build started..."
if [ -n "$1" ]; then
# build with drafts?
  if [ "$1" = "drafts" ]; then
    php cecil.phar build --verbose --drafts
  fi
else
  php cecil.phar build --verbose --optimize
fi
# build success? can deploy!
if [ $? = 0 ]; then echo -e "Cecil build successful!\n"; bash scripts/deploy.sh $1; else return 1; fi
