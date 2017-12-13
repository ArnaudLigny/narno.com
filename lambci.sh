#!/bin/bash -ex

BUILD_DIR_SITE=/tmp/lambci/build/$LAMBCI_REPO/_site

. ~/init/ruby 2.3.4
gem install dpl

. ~/init/php 7.1.2
curl -SOL https://phpoole.org/phpoole.phar
php phpoole.phar -v
php phpoole.phar build

ls $BUILD_DIR_SITE

#dpl --provider=pages --github-token=$GITHUB_TOKEN --local-dir=/tmp/lambci/build/$LAMBCI_REPO/_site --target-branch=test
