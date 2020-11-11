#!/bin/bash -e

. ~/init/php 7.3.13

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
    php cecil.phar build -vv --drafts --postprocess=no
  fi
else
  php cecil.phar build -v --postprocess
fi

# build success? can deploy!
if [ $? = 0 ]; then
  echo -e "Cecil build successful!\n";
  bash scripts/deploy.sh $1;
  # deploy fail?
  if [ $? != 0 ]; then
    exit 1;
  fi
else
  exit 1;
fi
