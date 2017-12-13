#!/bin/bash -ex

BUILD_PATH=/tmp/lambci/build/$LAMBCI_REPO/

. ~/init/ruby 2.3.4
gem install dpl

. ~/init/php 7.1.2
curl -SOL https://phpoole.org/phpoole.phar
php phpoole.phar -v
php phpoole.phar build

cd $BUILD_PATH
dpl --provider=pages --github-token=$GITHUB_TOKEN --repo=Narno/narno.com --target-branch=test --local-dir=_site
