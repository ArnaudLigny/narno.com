#!/bin/bash -e

. ~/init/php 7.2.26

echo "Downloading Cecil..."
curl -sSOL https://cecil.app/cecil.phar
php cecil.phar --version
if [ $? != 0 ]; then echo; exit 1; fi

echo "Installing themes..."
composer install --prefer-dist --no-dev --no-progress --no-interaction

echo
echo "Cecil build started..."
if [ -n "$1" ]; then
# build preview (with drafts)?
  if [ "$1" = "preview" ]; then
    php cecil.phar build --verbose --drafts
  fi
else
  php cecil.phar build --quiet --optimize
fi
# build success? can deploy!
if [ $? = 0 ]; then echo -e "Cecil build successful!\n"; bash scripts/deploy.sh $1; else return 1; fi
