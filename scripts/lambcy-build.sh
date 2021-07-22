#!/bin/bash -e

. ~/init/php 7.3.13

echo "Downloading Cecil"
if [ -z $CECIL_VERSION ]; then
  curl -sSOL https://cecil.app/cecil.phar
else
  curl -sSOL https://cecil.app/download/$CECIL_VERSION/cecil.phar
fi
php cecil.phar --version
if [ $? != 0 ]; then echo; exit 1; fi

echo "Installing themes"
composer install --prefer-dist --no-dev --no-progress --no-interaction

echo
echo "Started Cecil build"
if [[ $CECIL_ENV != "production" ]]; then
  php cecil.phar build -vv --drafts --postprocess=no
else
  php cecil.phar build -v --postprocess
fi

# build success? can deploy?
if [ $? = 0 ]; then echo "Finished Cecil build"; exit 0; fi

echo "Interrupted Cecil build"; exit 1
